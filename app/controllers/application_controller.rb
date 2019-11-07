class ApplicationController < ActionController::Base
  before_action :set_locale
	around_action :switch_locale

	def default_url_options
	  { locale: I18n.locale }
	end

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

	#* Locale set to 'en' in log	
	def set_locale
		I18n.locale = extract_locale_from_accept_language_header
		logger.debug "* Locale set to '#{I18n.locale}'"
	end
	
	private

		def extract_locale_from_accept_language_header
			request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
		end
end
