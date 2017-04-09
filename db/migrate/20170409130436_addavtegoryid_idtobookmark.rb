# frozen_string_literal: true

class AddavtegoryidIdtobookmark < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :category_id, :integer
  end
end
