class Review < ApplicationRecord
  belongs_to :customerID
  belongs_to :barberID
  validates :subject, presence: true
  validates :body, presence: true
  validates :rating, presence: true
end
