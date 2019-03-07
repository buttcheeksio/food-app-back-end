class Api::V1::RecipeIngredientsController < ApplicationController

  def index
    @recipe_ingredients = RecipeIngredient.all
    render json: @recipe_ingredients
  end
end
