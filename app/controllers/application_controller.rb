class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :signed_in?
  add_flash_types :success, :info, :warning, :danger

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user != nil
  end

  def signed_in?
    current_user.present?
  end

    private

    def authenticate!
      redirect_to new_session_path and return unless signed_in?
    end

end
