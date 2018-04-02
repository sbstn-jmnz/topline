require 'test_helper'

class PaymenttermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymentterm = paymentterms(:one)
  end

  test "should get index" do
    get paymentterms_url
    assert_response :success
  end

  test "should get new" do
    get new_paymentterm_url
    assert_response :success
  end

  test "should create paymentterm" do
    assert_difference('Paymentterm.count') do
      post paymentterms_url, params: { paymentterm: { clause: @paymentterm.clause, conditions: @paymentterm.conditions } }
    end

    assert_redirected_to paymentterm_url(Paymentterm.last)
  end

  test "should show paymentterm" do
    get paymentterm_url(@paymentterm)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymentterm_url(@paymentterm)
    assert_response :success
  end

  test "should update paymentterm" do
    patch paymentterm_url(@paymentterm), params: { paymentterm: { clause: @paymentterm.clause, conditions: @paymentterm.conditions } }
    assert_redirected_to paymentterm_url(@paymentterm)
  end

  test "should destroy paymentterm" do
    assert_difference('Paymentterm.count', -1) do
      delete paymentterm_url(@paymentterm)
    end

    assert_redirected_to paymentterms_url
  end
end
