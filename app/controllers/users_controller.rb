class UsersController < ApplicationController
 before_action :authenticate_user!, only: [:edit]
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books =Book.all
  end
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] ="You have updated book successfully."
      redirect_to user_path(current_user.id)
    else
      render "edit"
    end
  end

  private
  def user_params
      params.require(:user).permit(:name, :profile_image, :introduction)
  end


end