class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :set_layout

  def current_user
    User.find_by(id: session['user_id'])
  end
  helper_method :current_user

  def signed_in?
    !!current_user
  end
  helper_method :signed_in?

  def set_layout
    signed_in? ? "authenticated" : "application"
  end

end
