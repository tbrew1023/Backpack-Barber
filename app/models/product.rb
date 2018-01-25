class Product < ApplicationRecord
  belongs_to :productColor
  belongs_to :productSize
end
