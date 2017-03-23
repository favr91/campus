class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nombre, :apellido, :descripcion, :tipo_usuario, :sexo, :image, :email, :cedula, :password, :password_confirmation, area_ids:[]) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nombre, :apellido, :descripcion, :tipo_usuario, :sexo, :image, :email, :password, :password_confirmation, :current_password, area_ids:[]) }
  end

end

