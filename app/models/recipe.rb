class Recipe < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :description, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

end
