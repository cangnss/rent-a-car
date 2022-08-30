class User < ApplicationRecord
    has_one_attached :avatar
    has_many :cars # bir kullanıcının birden çok arabası olacağı için has_many kullandık.

    validates :name, :surname, :age, :avatar, presence: true
    validates :age, length:{ in: 0..90}
end
