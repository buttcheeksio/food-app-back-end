class Api::V1::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipes
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @selectedIngs = selected_ingredients[:ings]
    @selectedIngs.each do |ing|
      RecipeIngredient.create(ingredient_id: ing[:ingredient_id], amount: ing[:amount], unit: ing[:unit], recipe_id: @recipe.id)
    end
    if @recipe.valid?
      render json: @recipe
    end
  end

  private

  def recipe_params
    params.require(:new_recipe).permit(:name, :description, :directions, :vegetarian, :vegan, :gluten_free, :dairy_free, :user_id, :image)
  end

  def selected_ingredients
    params.require(:selected_ings).permit!
  end

end
