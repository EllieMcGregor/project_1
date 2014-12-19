class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_devise_params, if: :devise_controller?

   def configure_devise_params
     [:sign_up, :account_update].each do |action|
       devise_parameter_sanitizer.for(action) do |u|
         u.permit(:first_name, :last_name, :role, :dob, :description, :remote_user_image_url, :email, :password, :password_confirmation, :current_password)
       end
     end
   end
end
