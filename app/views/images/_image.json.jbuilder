json.extract! image, :id, :imageGroupID_id, :url, :sizeX, :sizeY, :created_at, :updated_at
json.url image_url(image, format: :json)
