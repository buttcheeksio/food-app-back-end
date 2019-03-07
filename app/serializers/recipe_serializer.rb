class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe_ingredients, :description ,:vegetarian ,:vegan ,:gluten_free ,:dairy_free ,:image ,:ready_in_minutes ,:number_of_servings ,:directions ,:user_id

  def recipe_ingredients
    object.recipe_ingredients.map {|i| Ingredient.find(i.ingredient_id)}
  end
end
