# frozen_string_literal: true

class CreateRecepts < ActiveRecord::Migration[5.0]
  def change
    create_table :recepts do |t|
      t.string :link_of_resurs
      t.string :body

      t.timestamps
    end
  end
end
