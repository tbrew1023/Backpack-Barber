json.extract! customer, :id, :email, :customerID_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
