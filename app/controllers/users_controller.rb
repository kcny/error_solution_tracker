class UsersController < ApplicationController
  
  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You are now registered!"
      redirect_to new_bug_archive_path
    else
      render :new
    end
  end
end

private

def user_params
  params.require(:user).permit(:full_name, :email, :password)
end