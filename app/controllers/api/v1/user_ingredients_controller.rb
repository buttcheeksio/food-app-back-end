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

  def create
    UserIngredient.create(user_id: params[:user_id], ingredient_id: params[:ingredient_id])
    render json: User.find(params[:user_id]).ingredients
  end

  def destroy
    @user_ingredient = UserIngredient.find { |i| i[:user_id] === params[:user_id] && i[:ingredient_id] === params[:ingredient_id]}
    @user_ingredient.destroy
    render json: User.find(params[:user_id]).ingredients
  end

private

  def user_ingredient_params
    params.require(:user_ingredient).permit(:user_id, :ingredient_id)
  end
  
end
