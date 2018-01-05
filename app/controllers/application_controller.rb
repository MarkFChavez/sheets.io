class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def current_user
    User.find_by(id: session['user_id'])
  end
  helper_method :current_user

  def signed_in?
    !!current_user
  end
  helper_method :signed_in?

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
