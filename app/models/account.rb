class Account < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true
  validates :lastName, presence: true
  validates :firstName, presence: true
  validates :phoneNumber, presence: true, uniqueness: true, numericality: true
  validates :isBarber, presence: true
  validates :city, presence: true
end
