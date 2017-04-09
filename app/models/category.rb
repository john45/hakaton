# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  bookmark_id :integer
#  title       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
end
