class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :title, :body, :image)
  end
end
