require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test? #開発とテストは今まで通りに
    config.storage = :file
  elsif Rails.env.production? #本番はS3に保存する
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials.aws[:AKIA3DIJT2LWH7C5F54E],
      aws_secret_access_key: Rails.application.credentials.aws[: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],
# credentials下にaws_access_key_idとaws_secret_access_keyはあるよ
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'haru-pf-app'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/s3haru-pf-app'
  end
end
