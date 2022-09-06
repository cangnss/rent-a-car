class User < ApplicationRecord
  has_secure_password
  has_one_attached :avatar
  has_many :car
  has_many :rents
  
  validates :name, :surname, :age, :avatar, presence: true
  validates :age, length:{ in: 0..90}
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
  validates :password_digest, presence: true
end
