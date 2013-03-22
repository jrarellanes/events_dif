#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user_session, :current_user
  protected
  def current_user_session
    @current_user_session ||= UserSession.find
  end

  def current_user
    @current_user ||= current_user_session && current_user_session.user
  end

  def authenticate
    unless current_user_session
      flash[:notice] = "Debe de iniciar sesión"
      redirect_to new_user_session_path
      return false
    end
  end

  def administrador?
    unless current_user_session and current_user.is_admin?
      flash[:notice] = "Necesita ser administrador"
      redirect_to root_path
    end
  end

 
end
