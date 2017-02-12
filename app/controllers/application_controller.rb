class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protect_from_forgery with: :exception
  protected 

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:nombre, :apellido, :descripcion, :tipo_usuario, :sexo, :email, :password, :password_confirmation, :remember_me)
  end
end

end
  