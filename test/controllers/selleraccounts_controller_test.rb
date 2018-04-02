require 'test_helper'

class SelleraccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selleraccount = selleraccounts(:one)
  end

  test "should get index" do
    get selleraccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_selleraccount_url
    assert_response :success
  end

  test "should create selleraccount" do
    assert_difference('Selleraccount.count') do
      post selleraccounts_url, params: { selleraccount: { account: @selleraccount.account, address: @selleraccount.address, bank: @selleraccount.bank, other: @selleraccount.other, seller_id: @selleraccount.seller_id, swift: @selleraccount.swift } }
    end

    assert_redirected_to selleraccount_url(Selleraccount.last)
  end

  test "should show selleraccount" do
    get selleraccount_url(@selleraccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_selleraccount_url(@selleraccount)
    assert_response :success
  end

  test "should update selleraccount" do
    patch selleraccount_url(@selleraccount), params: { selleraccount: { account: @selleraccount.account, address: @selleraccount.address, bank: @selleraccount.bank, other: @selleraccount.other, seller_id: @selleraccount.seller_id, swift: @selleraccount.swift } }
    assert_redirected_to selleraccount_url(@selleraccount)
  end

  test "should destroy selleraccount" do
    assert_difference('Selleraccount.count', -1) do
      delete selleraccount_url(@selleraccount)
    end

    assert_redirected_to selleraccounts_url
  end
end
