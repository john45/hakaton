# frozen_string_literal: true

class Addadminfieldtouser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end
