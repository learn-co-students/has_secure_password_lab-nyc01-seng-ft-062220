class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    helper_method :logged_in?, :current_user
    before_action :current_user


    def authorized
      redirect_to login_path unless self.logged_in?
    end

    def logged_in?
      !!current_user
    end

  private

    def current_user
      @_current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
    end
  
end
