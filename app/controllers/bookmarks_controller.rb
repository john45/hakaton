# frozen_string_literal: true

class BookmarksController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  def create
    doc = Nokogiri::HTML(open(params[:bookmark][:link]))
    # title = doc.css("h2 a").text
    basic_link = params[:bookmark][:link].split('/')[2]

    if recept = Recept.find_by_link_of_resurs(basic_link)

      title = doc.at("meta[property='og:title']")['content']
      image = doc.at("meta[property='og:image']")['content']
      body = doc.css(recept.body).text

      @bookmark = Bookmark.new(link: params[:bookmark][:link], title: title, body: body, image: image)
      @bookmark.user = current_user
      @bookmark.category_id = 1 # TODO: realize categories

      if @bookmark.save
        render :show, notice: 'all good beyba!'
      else
        redirect_to root_path, alert: 'Dosonot create bookmarks'
      end
    else
      redirect_to root_path, alert: 'We don\'t support thiw resurs '

    end
  end

  def show
    @bookmark = Bookmark.find params[:id]
  end

  private

  def incom_bookmark
    params.require(:bookmark).permit(:link)
  end
end
