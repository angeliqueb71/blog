class SessionsController < ApplicationController
  def login
  end
# Sign the user in and redirect to the user
  def login_attempt
    @user = User.where(email: params[:email]).first
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id

      redirect_to root_path
    else
      flash[:notice] = "Invalid Username or Password"

      render "login"
    end
  end

  def logout
    session[:user_id] = nil

    redirect_to root_path
  end
end
