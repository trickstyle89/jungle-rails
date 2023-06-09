require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module New
  class Application < Rails::Application
    config.load_defaults 6.1

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
  end
end

