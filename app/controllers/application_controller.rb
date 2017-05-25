class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: "hust_euniv", password: "87654321"
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def current_ability
  #   @current_ability ||= AdminAbility.new(current_user)
  # end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:username]
  end

  def after_sign_in_path_for resource
    if current_user.is_admin?
      admin_root_path
    else
      root_path
    end
  end

  def verify_admin
    redirect_to admin_root_url if current_user.try(:is_admin?)
  end
end
