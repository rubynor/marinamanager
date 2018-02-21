require 'test_helper'

class PiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pier = piers(:one)
  end

  test "should get index" do
    get piers_url
    assert_response :success
  end

  test "should get new" do
    get new_pier_url
    assert_response :success
  end

  test "should create pier" do
    assert_difference('Pier.count') do
      post piers_url, params: { pier: { letter: @pier.letter } }
    end

    assert_redirected_to pier_url(Pier.last)
  end

  test "should show pier" do
    get pier_url(@pier)
    assert_response :success
  end

  test "should get edit" do
    get edit_pier_url(@pier)
    assert_response :success
  end

  test "should update pier" do
    patch pier_url(@pier), params: { pier: { letter: @pier.letter } }
    assert_redirected_to pier_url(@pier)
  end

  test "should destroy pier" do
    assert_difference('Pier.count', -1) do
      delete pier_url(@pier)
    end

    assert_redirected_to piers_url
  end
end
