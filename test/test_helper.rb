ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
  include FactoryBot::Syntax::Methods
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# TODO Remove when Devise fixes https://github.com/heartcombo/devise/issues/5705
ActiveSupport.on_load(:action_mailer) do
  Rails.application.reload_routes_unless_loaded
end
