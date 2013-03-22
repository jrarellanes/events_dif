Congresos::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  #config.servidor_pagos_uach = "http://148.229.13.124"
  config.servidor_pagos_uach = "http://epagos.uach.mx"
  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  #  compress assets
  config.assets.js_compressor  = :uglifier
  config.assets.css_compressor = :scss


  config.i18n.default_locale = :es_MX
end
