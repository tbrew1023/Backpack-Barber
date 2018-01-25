json.extract! store_transaction, :id, :dateTime, :charge, :customerID_id, :productID_id, :created_at, :updated_at
json.url store_transaction_url(store_transaction, format: :json)
