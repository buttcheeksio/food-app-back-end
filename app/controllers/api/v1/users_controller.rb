class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      flash[:success] = "You successfully made a new user!"
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
  end

end
