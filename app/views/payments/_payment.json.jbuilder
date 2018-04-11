json.extract! payment, :id, :order_id, :totalamount, :advance, :advancedate, :balance, :balancepaid, :paiddate, :created_at, :updated_at
json.url payment_url(payment, format: :json)
