json.extract! transaction, :id, :dateTime, :customerID_id, :barberID_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
