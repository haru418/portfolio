CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIA3DIJT2LWH7C5F54E',
    :aws_secret_access_key  => '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',
    :region                 => 'ap-northeast-1'
  }

  config.fog_directory = 'haru-pf-app' if Rails.env.production?
  # config.fog_directory = 'your_backet_for_dev' if Rails.env.development?

end