class Api::V1::IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredients
  end

private

  def ingredient_params
    params.require(:ingredient).permit(:name, :type, :season, :techniques, :taste, :tips)
  end
  
end
