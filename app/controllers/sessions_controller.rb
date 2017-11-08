class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:logged_in?] = true
      login_successful
    else
      @user = User.find_by(email: params[:session][:email])
      verify_user
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have logged out!"
    redirect_to root_path
  end

  private

  def verify_user
    if @user && @user.authenticate(params[:session][:password])
      login_successful
    else
      flash[:failure] = "Hmm... try that again."
      redirect_to root_path
    end
  end

  def login_successful
    session[:user_id] = @user.id
    flash[:notice] = "Logged in as #{@user.first_name} #{@user.last_name}"
    redirect_to currency_path([:Bitcoin])
  end


end
