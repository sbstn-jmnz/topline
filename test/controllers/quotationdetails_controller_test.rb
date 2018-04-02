require 'test_helper'

class QuotationdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quotationdetail = quotationdetails(:one)
  end

  test "should get index" do
    get quotationdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_quotationdetail_url
    assert_response :success
  end

  test "should create quotationdetail" do
    assert_difference('Quotationdetail.count') do
      post quotationdetails_url, params: { quotationdetail: { brand_id: @quotationdetail.brand_id, color_id: @quotationdetail.color_id, deliverydate: @quotationdetail.deliverydate, finalprice: @quotationdetail.finalprice, otherdetails: @quotationdetail.otherdetails, product_id: @quotationdetail.product_id, quantity: @quotationdetail.quantity, quotation_id: @quotationdetail.quotation_id, ratio: @quotationdetail.ratio, size_id: @quotationdetail.size_id, targetprice: @quotationdetail.targetprice } }
    end

    assert_redirected_to quotationdetail_url(Quotationdetail.last)
  end

  test "should show quotationdetail" do
    get quotationdetail_url(@quotationdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_quotationdetail_url(@quotationdetail)
    assert_response :success
  end

  test "should update quotationdetail" do
    patch quotationdetail_url(@quotationdetail), params: { quotationdetail: { brand_id: @quotationdetail.brand_id, color_id: @quotationdetail.color_id, deliverydate: @quotationdetail.deliverydate, finalprice: @quotationdetail.finalprice, otherdetails: @quotationdetail.otherdetails, product_id: @quotationdetail.product_id, quantity: @quotationdetail.quantity, quotation_id: @quotationdetail.quotation_id, ratio: @quotationdetail.ratio, size_id: @quotationdetail.size_id, targetprice: @quotationdetail.targetprice } }
    assert_redirected_to quotationdetail_url(@quotationdetail)
  end

  test "should destroy quotationdetail" do
    assert_difference('Quotationdetail.count', -1) do
      delete quotationdetail_url(@quotationdetail)
    end

    assert_redirected_to quotationdetails_url
  end
end
