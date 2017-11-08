class PasswordsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:password][:email])
    ConfirmationSender.send_confirmation(user)
    redirect_to new_password_path(email: user.email)
  end

  def update
    user = User.find_by(email: params[:email])
    if user && user.verification_code == params[:password][:verification_code]
      user.update(password_params)
      session[:user_id] = user.id
      redirect_to currency_path([:Bitcoin])
    else
      redirect_to new_password_path
    end
  end

  private

    def password_params
      params.require(:password).permit(:password, :password_confirmation)
    end

    def passwords_not_empty?
      params[:user][:password].length > 0 && params[:user][:password_confirmation].length > 0
    end

    def passwords_equal?
      params[:user][:password] == params[:user][:password_confirmation]
    end

end
