class Car < ApplicationRecord
    has_one_attached :car_image
    belongs_to :user # bir araba bir user'a ait olabilir.
    has_many :rents   

    validates :car_name, :car_model, :car_brand, :car_model, :car_type, :car_km, :car_image, presence: true
    validates :car_name, length: { maximum: 15 }
end
