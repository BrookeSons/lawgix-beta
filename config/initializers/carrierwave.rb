CarrierWave.configure do |config|
  config.groupdocs_client_id   = Rails.application.secrets.client_id
  config.groupdocs_private_key = Rails.application.secrets.private_key
end