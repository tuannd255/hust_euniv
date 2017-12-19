class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
    create_cookie
  end

  # DELETE /resource/sign_out
  def destroy
    super
    delete_cookie
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  private
  def create_cookie
    cookies[:current_user_email] = current_user.email
  end

  def delete_cookie
    cookies.delete :current_user_email
  end
end
