json.extract! appointment, :id, :DateTime, :location, :customerID_id, :barberID_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
