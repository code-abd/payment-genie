require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module PaymentGenie
  class Application < Rails::Application
    config.load_defaults 8.0
    config.active_storage.draw_routes = false
    # TODO: Enable to send mails
    config.action_mailbox.draw_routes = false

    config.autoload_lib(ignore: %w[assets tasks])
  end
end
