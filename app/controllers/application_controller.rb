class ApplicationController < ActionController::Base
	protect_from_forgery prepend: true
	add_flash_types :success, :danger, :info, :warning

    before_action :store_user_location!, if: :storable_location?

    before_action :set_locale

protected

def after_sign_in_path_for(resource_or_scope)
  stored_location_for(resource_or_scope) || request.referrer
end

def after_sign_out_path_for(resource_or_scope)
  stored_location_for(resource_or_scope) || request.referrer
end

  private

    def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  def default_url_options(options = {})
   { locale: I18n.locale }.merge options
end 

 def storable_location?
      request.get? && is_navigational_format? && !devise_controller? && !request.xhr? 
    end

    def store_user_location!
      # :user is the scope we are authenticating
      store_location_for(:user, request.fullpath)
    end



end
