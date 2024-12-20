require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlRailsTemplate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

# TODO Remove when Devise fixes https://github.com/heartcombo/devise/issues/5705
# Starting from Rails 8.0, routes are lazy-loaded by default in test and development environments.
if Rails.env.development? || Rails.env.test?
  ActiveSupport.on_load(:action_mailer) do
    Rails.application.reload_routes_unless_loaded
  end
end
