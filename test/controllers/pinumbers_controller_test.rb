require 'test_helper'

class PinumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pinumber = pinumbers(:one)
  end

  test "should get index" do
    get pinumbers_url
    assert_response :success
  end

  test "should get new" do
    get new_pinumber_url
    assert_response :success
  end

  test "should create pinumber" do
    assert_difference('Pinumber.count') do
      post pinumbers_url, params: { pinumber: { format: @pinumber.format } }
    end

    assert_redirected_to pinumber_url(Pinumber.last)
  end

  test "should show pinumber" do
    get pinumber_url(@pinumber)
    assert_response :success
  end

  test "should get edit" do
    get edit_pinumber_url(@pinumber)
    assert_response :success
  end

  test "should update pinumber" do
    patch pinumber_url(@pinumber), params: { pinumber: { format: @pinumber.format } }
    assert_redirected_to pinumber_url(@pinumber)
  end

  test "should destroy pinumber" do
    assert_difference('Pinumber.count', -1) do
      delete pinumber_url(@pinumber)
    end

    assert_redirected_to pinumbers_url
  end
end
