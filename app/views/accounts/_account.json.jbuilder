json.extract! account, :id, :email, :password, :lastName, :firstName, :phoneNumber, :isBarber, :signUpDate, :userImage, :city, :created_at, :updated_at
json.url account_url(account, format: :json)
