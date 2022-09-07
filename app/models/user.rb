class User < ApplicationRecord
  has_one_attached :avatar
  has_many :cars
  has_many :rents
  has_many :rented_cars, through: :rents, source: :cars # bir kullanıcı birden çok araba kiralayabilir.
  
  validates :name, :surname, :age, :avatar, presence: true
  validates :age, length:{ in: 0..90}
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password_digest, presence: true
end
