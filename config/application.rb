require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module UserProjects
  class Application < Rails::Application
    config.load_defaults 8.0
    config.autoload_lib(ignore: %w[assets tasks])

    config.generators do |g|
      g.test_framework(
        :rspec,
        fxtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false

      )
    end
  end
end
