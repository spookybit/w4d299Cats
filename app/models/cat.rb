COLORS = ["brown", "black", "red", "blue", "orange", "white", "gray", "purple", "green"]

class Cat < ActiveRecord::Base
  validates :birthdate, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: COLORS

  has_many :cat_rental_requests,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

end
