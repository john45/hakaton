# frozen_string_literal: true

class Addtitiletobookmarks < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :title, :string
  end
end
