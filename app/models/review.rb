class Review < ApplicationRecord
  belongs_to :customerID
  belongs_to :barberID
end
