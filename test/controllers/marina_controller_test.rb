require 'test_helper'

class MarinaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marina_index_url
    assert_response :success
  end

end
