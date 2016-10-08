class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def default_url_options(options = {})
    I18n.locale != I18n.default_locale ? { locale: I18n.locale }.merge(options) : options
  end

  private

  def set_locale
    extracted_locale = params[:locale] || extract_locale_from_accept_language_header || extract_locale_from_ip
    I18n.locale = (I18n::available_locales.include? extracted_locale.to_sym) ? extracted_locale : I18n.default_locale
  end

  def extract_locale_from_accept_language_header
    return I18n.default_locale unless request.env['HTTP_ACCEPT_LANGUAGE']
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

  def extract_locale_from_ip
    geoip ||= GeoIP.new(Rails.root.join('db/GeoIP.dat'))
    country_location = geoip.country(request.remote_ip)
    country_location.country_code2.downcase
  end
end
