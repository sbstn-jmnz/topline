json.extract! quotationdetail, :id, :quotation_id, :brand_id, :product_id, :color_id, :quantity, :size_id, :ratio, :deliverydate, :targetprice, :finalprice, :otherdetails, :created_at, :updated_at
json.url quotationdetail_url(quotationdetail, format: :json)
