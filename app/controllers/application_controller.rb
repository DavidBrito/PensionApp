class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    homepage_path
  end
  
  ## Para cada atributo do model user passado nas paginas do devise, permitir
  #  apenas aqueles configurados abaixo.
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :cpf, :user_type])
    devise_parameter_sanitizer.permit(:edit, keys: [:name, :cpf, :user_type])
  end
end
