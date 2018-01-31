class Barber < ApplicationRecord
  belongs_to :email
  validates :charge, presence: true, numericality: true
  validates :description, length:{:is => 150}
end
