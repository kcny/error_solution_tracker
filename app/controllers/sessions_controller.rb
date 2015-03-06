class SessionsController < ApplicationController

  def new
    redirect_to bug_archives_path if current_user
  end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to bug_archives_path, notice: "Welcome, you've successfully logged in."
    else
      flash[:error] = "The combination of your email/password is incorrect."
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You're now logged out."
  end
end