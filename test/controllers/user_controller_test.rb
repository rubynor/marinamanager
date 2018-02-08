require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  test "should get dashboard" do
    get user_dashboard_url
    assert_response :success
  end

end
