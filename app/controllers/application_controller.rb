class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_locale

  def set_locale
     lang =  request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
     I18n.locale = lang.to_sym
  end
end
