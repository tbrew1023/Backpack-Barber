class StoreTransaction < ApplicationRecord
  belongs_to :customerID
  belongs_to :productID
end
