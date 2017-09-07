class Pet < ApplicationRecord
  belongs_to :lender
  has_many :reservations
  has_many :borrowers, :through => :reservations
end
