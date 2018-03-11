json.extract! store_product, :id, :imgurl, :price, :description, :created_at, :updated_at
json.url store_product_url(store_product, format: :json)
