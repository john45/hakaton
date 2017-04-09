# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :link
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
