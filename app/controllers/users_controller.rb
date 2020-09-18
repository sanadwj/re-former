class UsersController < ApplicationController
  
  def new
  end

  def create
    @user = User.new(user_name: params[:user_name], email: params[:email], password: params[:password])

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
/
  private
  def user_params
    params.require(:user).permit(:user_name,:email,:password)
  end
/
end
