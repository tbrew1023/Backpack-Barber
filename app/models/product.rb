class Product < ApplicationRecord
  has_one :productColor
  has_one :productSize
  validates :productPrice, presence: true, numericality: true
end
