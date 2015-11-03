class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	# If your model is called User
	def after_sign_in_path_for(resource)
	  if current_user.admin?
	  	payments_path
	  else
	  	events_path 
	  end
	  #session["user_return_to"] || root_path
	end

end
