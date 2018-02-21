require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "Not logged in user should get redirected to home" do
    get admin_dashboard_path
    assert_redirected_to root_path
  end

end
