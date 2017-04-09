# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.integer :bookmark_id
      t.string :title

      t.timestamps
    end
  end
end
