class ProductType < ApplicationRecord
  validates :type, presence: true
end
