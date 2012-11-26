class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  #Solicitar login del usuario para ciertas acciones
  
	#before_filter :authenticate

  #def authenticate
   # redirect_to :login unless User.find_by_provider_and_uid(auth["provider"], auth["uid"])
  #end
 
  # Pregunta si hay un usuario loggeado.
  #def logged_in?
    #!!current_user
  #end 
end
