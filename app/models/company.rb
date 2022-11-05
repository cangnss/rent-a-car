class Company < ApplicationRecord
  belongs_to :cars
  has_one_attached :image
end
