class User < ApplicationRecord
    has_one_attached :avatar
    validates :name, :surname, :age, :avatar, presence: true
end
