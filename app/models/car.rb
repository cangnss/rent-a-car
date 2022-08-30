class Car < ApplicationRecord
    has_one_attached :car_image    
    validates :car_name, :car_model, :car_brand, :car_model, :car_type, :car_km, :car_image, presence: true
    validates :car_name, length: { maximum: 15 }
    # validates :car_model, presence: true, length: { in: 0..4 }
    # validates :car_km, presence: true, length: { maximum:300.000 }
end
