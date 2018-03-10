require 'test_helper'

class BasicCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basic_category = basic_categories(:one)
  end

  test "should get index" do
    get basic_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_basic_category_url
    assert_response :success
  end

  test "should create basic_category" do
    assert_difference('BasicCategory.count') do
      post basic_categories_url, params: { basic_category: { name: @basic_category.name } }
    end

    assert_redirected_to basic_category_url(BasicCategory.last)
  end

  test "should show basic_category" do
    get basic_category_url(@basic_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_basic_category_url(@basic_category)
    assert_response :success
  end

  test "should update basic_category" do
    patch basic_category_url(@basic_category), params: { basic_category: { name: @basic_category.name } }
    assert_redirected_to basic_category_url(@basic_category)
  end

  test "should destroy basic_category" do
    assert_difference('BasicCategory.count', -1) do
      delete basic_category_url(@basic_category)
    end

    assert_redirected_to basic_categories_url
  end
end
