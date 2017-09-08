class Pet < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, :through => :reservations

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true, length: {maximum: 2}
  validates :price, presence: true, numericality: { only_integer: true }
end
