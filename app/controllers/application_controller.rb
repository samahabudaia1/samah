class ApplicationController < ActionController::Base
	include ApplicationHelper
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end
  def basket
session[:basket] ||= Set.new
end
end