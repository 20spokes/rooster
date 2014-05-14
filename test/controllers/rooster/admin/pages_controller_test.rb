require 'test_helper'

module Rooster
  class Admin::PagesControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
