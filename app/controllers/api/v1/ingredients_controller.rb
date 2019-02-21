class Api::V1::IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredients
  end

  # def new
  #   @ingredient = Ingredient.new
  # end

  # def create
  #   @ingredient = Ingredient.create(ingredient_params)
  #
  #   if @ingredient.valid?
  #     flash[:success] = "You successfully made a new ingredient!"
  #     redirect_to @ingredient
  #   else
  #     @errors = @ingredient.errors.full_messages
  #     render :new
  #   end
  # end

private

  def ingredient_params
    params.require(:ingredient).permit(:name, :type)
  end
end
