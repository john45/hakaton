# frozen_string_literal: true

# == Schema Information
#
# Table name: recepts
#
#  id             :integer          not null, primary key
#  link_of_resurs :string(255)
#  body           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Recept < ApplicationRecord
end
