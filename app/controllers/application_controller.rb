class ApplicationController < ActionController::Base
	include ApplicationHelper
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: exception.message
  end

  def admin_user
    redirect_to(root_path) if !current_user || !current_user.admin?
end


end