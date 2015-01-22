class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :sign_up_params, :account_update_params, if: :devise_controller?
      


		def sign_up_params
		    params.require(:user).permit(:default_location, :email, :password, :password_confirmation)
		  end
		 
		  def account_update_params
		    params.require(:user).permit(:default_location, :email, :password, :password_confirmation, :current_password)
		  end

end
