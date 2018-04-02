require 'test_helper'

class SupplieraccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplieraccount = supplieraccounts(:one)
  end

  test "should get index" do
    get supplieraccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_supplieraccount_url
    assert_response :success
  end

  test "should create supplieraccount" do
    assert_difference('Supplieraccount.count') do
      post supplieraccounts_url, params: { supplieraccount: { account: @supplieraccount.account, address: @supplieraccount.address, bank: @supplieraccount.bank, other: @supplieraccount.other, supplier_id: @supplieraccount.supplier_id, swift: @supplieraccount.swift } }
    end

    assert_redirected_to supplieraccount_url(Supplieraccount.last)
  end

  test "should show supplieraccount" do
    get supplieraccount_url(@supplieraccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplieraccount_url(@supplieraccount)
    assert_response :success
  end

  test "should update supplieraccount" do
    patch supplieraccount_url(@supplieraccount), params: { supplieraccount: { account: @supplieraccount.account, address: @supplieraccount.address, bank: @supplieraccount.bank, other: @supplieraccount.other, supplier_id: @supplieraccount.supplier_id, swift: @supplieraccount.swift } }
    assert_redirected_to supplieraccount_url(@supplieraccount)
  end

  test "should destroy supplieraccount" do
    assert_difference('Supplieraccount.count', -1) do
      delete supplieraccount_url(@supplieraccount)
    end

    assert_redirected_to supplieraccounts_url
  end
end
