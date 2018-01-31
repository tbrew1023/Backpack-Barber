class StoreTransaction < ApplicationRecord
  belongs_to :customerID
  belongs_to :productID
  validates :charge, presence: true
end
