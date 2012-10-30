class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def authenticate_admin_user!
    # authenticate_user! 
    unless current_user.has_role? :admin
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path 
    end
  end

  def current_admin_user
  	return current_user
  end

end
