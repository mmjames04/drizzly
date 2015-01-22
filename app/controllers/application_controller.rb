class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_action :sign_up_params, :account_update_params, if: :devise_controller?

  # callback for strong params for additional attributes of user model      
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :city
    devise_parameter_sanitizer.for(:sign_up) << :state
  end


			# def sign_up_params
			#     params.require(:user).permit(:default_location, :email, :password, :password_confirmation)
			#   end
			 
			#   def account_update_params
			#     params.require(:user).permit(:default_location, :email, :password, :password_confirmation, :current_password)
			#   end

end
