class Reservation < ApplicationRecord
  belongs_to :borrower
  belongs_to :pet
end
