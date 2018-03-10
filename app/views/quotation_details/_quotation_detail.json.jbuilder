json.extract! quotation_detail, :id, :product, :target_price, :quantity, :color, :size, :ratio, :delivery_date, :status, :incoterm, :final_price, :quotation_id, :created_at, :updated_at
json.url quotation_detail_url(quotation_detail, format: :json)
