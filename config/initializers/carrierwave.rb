CarrierWave.configure do |config|
  config.groupdocs_client_id   = Rails.application.secrets.client_id
  config.groupdocs_private_key = Rails.application.secrets.private_key

  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines


  config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => '',                        # required
      :aws_secret_access_key  => '',                     # required

  }
  config.fog_directory  = 'lawgix'                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}




end
