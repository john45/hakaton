# frozen_string_literal: true

# == Schema Information
#
# Table name: bookmarks
#
#  id          :integer          not null, primary key
#  link        :string(255)
#  body        :text(65535)
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string(255)
#  user_id     :integer
#  category_id :integer
#

require 'test_helper'

class BookmarkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
