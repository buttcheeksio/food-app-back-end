class Api::V1::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipes
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.valid?
      flash[:success] = "You successfully made a new recipe!"
      redirect_to @recipe
    else
      @errors = @recipe.errors.full_messages
      render :new
    end
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

end
