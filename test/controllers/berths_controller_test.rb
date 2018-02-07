require 'test_helper'

class BerthsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get berths_new_url
    assert_response :success
  end

end
