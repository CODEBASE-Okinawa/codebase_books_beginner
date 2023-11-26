class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # user = params.require(:user).permit(:name, :email, :password,:password_confirmation)
    if @user.save
      flash[:success] = "Welcome to the codebase books!"
      redirect_to books_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end
end
