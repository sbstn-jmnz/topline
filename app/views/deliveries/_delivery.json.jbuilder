json.extract! delivery, :id, :order_id, :port_id, :invnumber, :invdate, :totalinvq, :price, :totalinvamount, :eta, :bl, :docs, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
