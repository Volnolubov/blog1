require_relative 'boot'
require 'rails/all'
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
  	config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Moscow'
    config.i18n.available_locales = [:ru, :en]
    config.i18n.default_locale = :ru
  end
end

module YourApp
  class Application < Rails::Application
    config.middleware.use Rack::Deflater
  end
end
