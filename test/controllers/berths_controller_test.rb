require 'test_helper'

class BerthsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_berth_path
    assert_response :success
  end

end
