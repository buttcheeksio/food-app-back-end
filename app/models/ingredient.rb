class Ingredient < ApplicationRecord
  has_many :user_ingredients
  has_many :recipe_ingredients
  has_many :nutrients
end
