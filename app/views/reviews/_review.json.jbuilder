json.extract! review, :id, :subject, :body, :rating, :customerID_id, :barberID_id, :created_at, :updated_at
json.url review_url(review, format: :json)
