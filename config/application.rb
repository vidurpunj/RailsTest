require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module UserProjects
  class Application < Rails::Application
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])
    ## Remove filed from filtered elements list
    config.filter_parameters -= [:email]

    config.generators do |g|
      g.test_framework(
        :rspec,
        fxtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false
      )
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end
  end
end
