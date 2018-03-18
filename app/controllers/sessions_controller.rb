class SessionsController < ApplicationController

  def create
    @user = User.where(email: params[:email]).first
    if @user and @user.confirmed? and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, success: "You have signed in!"
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path, danger: "invalid email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def new
  end

end
