require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AmtLaser
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.relative_url_root = "/~laser/log"
    config.action_controller.relative_url_root = "/~laser/log"
    config.root_directory = '/~laser/log'
    config.assets.prefix = '/~laser/log/assets/'    
  end
end
