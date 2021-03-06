class UsersController < ApplicationController
  def index
    @users = User.all.order_by(:name)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user), notice: 'User created'
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update user_params
      redirect_to user_path(@user), notice: 'User updated'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :token
  end
end
