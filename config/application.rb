require_relative 'boot'

require 'rails/all'


Bundler.require(*Rails.groups)

module ChatSpace
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators do |g|
    config.i18n.default_locale = :ja
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    config.time_zone = 'Tokyo'
  end
end
