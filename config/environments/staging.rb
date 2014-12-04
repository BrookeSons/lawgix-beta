require_relative "production"

Mail.register_interceptor(
  RecipientInterceptor.new('tom.brooke@gmail.com')
)

Rails.application.configure do
  # ...

  config.action_mailer.default_url_options = { host: 'staging.lawgix.com' }
end
