class SessionsController < ApplicationController

  def new
    redirect_to bug_archives_path if current_user
  end

  def create
    # user = User.where(email: params[])
  end
end