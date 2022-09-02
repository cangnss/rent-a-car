class User < ApplicationRecord
  has_one_attached :avatar
  has_many :car
  has_many :rents
  
  validates :name, :surname, :age, :avatar, presence: true
  validates :age, length:{ in: 0..90}
end
