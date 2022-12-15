class SessionsController < ApplicationController
  skip_before_action :protect_pages
  
  def new
  end

  def create
    @user = User.find_by(name_user: params[:user_name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to items_path
    else  
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to items_path
  end
end
