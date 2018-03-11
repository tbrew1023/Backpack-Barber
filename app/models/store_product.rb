class StoreProduct < ApplicationRecord
  validates :imgurl, presence: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true
  validates :product_type, presence: true
end
