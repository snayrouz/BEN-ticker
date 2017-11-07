class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      session[:logged_in?] = true
      redirect_to currency_path
    else
      redirect_to login_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if current_user.save
      current_user.update(user_params)
      redirect_to currencies_path
    elsif current_user.save
      current_user.update(user_params)
      redirect_to currencies_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest, :phone)
  end

  def require_login
    unless session[:logged_in?]
      flash[:error] = "You must be logged in to view this content"
      redirect_to login_path
    end
  end
end
