class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied, :with => :admin  
	  private
		def admin
		   redirect_to root_path
		end
	end
end