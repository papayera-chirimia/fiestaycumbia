module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:name, :password, :remember_me, :role) }
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :role, :email, :password, :password_confirmation, :current_password)}
  end

end

DeviseController.send :include, DevisePermittedParameters
