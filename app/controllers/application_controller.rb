class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :to_root_if_not_owner_or_admin
  helper_method :to_root_if_not_logged_in

  def current_user
    return nil if session[:user_id].nil?
    User.find(session[:user_id])
  end

  def to_root_if_not_logged_in
    if current_user.nil?
      redirect_to signin_path, alert: "Sinulla ei ole riittäviä oikeuksia"
    end
  end

  def to_root_if_not_owner_or_admin(owner_id)
    if not current_user.nil?

      if current_user.userlevel == 2
        return true
      elsif current_user.id == owner_id
        return true
      else
        redirect_to signin_path, alert: "Sinulla ei ole riittäviä oikeuksia"
      end

    else #ohjataan kirjautumaton käyttäjä roottiin
      redirect_to signin_path, alert: "Sinun täytyy kirjautua sisään päästäksesi tarkastelemaan sivua"
    end
  end



end
