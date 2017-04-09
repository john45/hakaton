# frozen_string_literal: true

class StaticController < ApplicationController
  def home
    if current_user
      @bookmark = Bookmark.new
      @bookmarks = Bookmark.where('user_id = ?', current_user.id)
      @recept = Recept.new if current_user.admin
    end
  end

  def do_fail; end
end
