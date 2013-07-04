CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIR367AZSNWO4RXXQ',                        # required
    :aws_secret_access_key  => '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',                        # required
  }
  config.fog_directory  = 'onesecvids'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
