json.extract! product, :id, :productType, :productColor_id, :productSize_id, :productPrice, :created_at, :updated_at
json.url product_url(product, format: :json)
