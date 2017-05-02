class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @users = User.new(
      fname: params[:user][:fname],
      lname: params[:user][:lname],
      email: params[:user][:email],
      password: params[:user][:password]
    )

    if @user
      flash[:notice] = "Blogger, Blogger"
      session[:current_user_id] = @users.id
      redirect_to new_post_path(@posts)
      puts "the current session is #{session[:user_id]}"
    else
      flash[:alert] = "No Blogging for you today"
      redirect_to new_user_path
    end
  end

   #redirect_to user_path
  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(user_params)

    redirect_to :back
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to root_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
