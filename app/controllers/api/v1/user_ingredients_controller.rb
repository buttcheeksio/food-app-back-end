class Api::V1::UserIngredientsController < ApplicationController

  def index
    render json: UserIngredient.all
  end

  def show_users_ingredients
    @user = User.find(params[:id])
    render json: @user.ingredients
  end

  def new
    @user_ingredient = Ingredient.new
  end

  # def create
  #   render json: UserIngredient.create(user_ingredient_params)
  # end

  def create_user_ingredients
    params[:ingredients_ids].map do |id|
      UserIngredient.create(user_id: params[:user_id], ingredient_id: id)
    end
    render json: User.find(params[:user_id]).ingredients
  end

private

  def user_ingredient_params
    params.require(:user_ingredient).permit(:user_id, :ingredients_ids)
  end
end
