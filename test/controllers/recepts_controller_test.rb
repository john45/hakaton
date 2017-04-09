# frozen_string_literal: true

require 'test_helper'

class ReceptsControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get recepts_create_url
    assert_response :success
  end
end
