# frozen_string_literal: true

class AdduserIdtobookmark < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :user_id, :integer
  end
end
