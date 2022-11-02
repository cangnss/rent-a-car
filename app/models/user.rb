class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  enum role: { user: 0, company: 1}
  validates :name, :surname, :birthday, :avatar, :email, :password, :password_confirmation, presence: true

end
