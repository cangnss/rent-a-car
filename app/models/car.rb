class Car < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  has_many :rents

  validates :name, :model, :brand, :case_type, :km, :images, :seat, :ac, :gear, :fuel, :price, presence: true
  validates :name, length: { maximum: 15 }
  validates :seat, :inclusion => 1..5
end
