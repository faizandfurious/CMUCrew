class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
      flash[:error] = exception.to_s + exception.action.to_s
      redirect_to root_url
  	end
end
