if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],
      :aws_access_key_id     => ENV['AKIA3DIJT2LWH7C5F54E'],
      :aws_secret_access_key => ENV['VlupHvvYUYn4OAgAj2NevSnE5qkt2gXkKX']
    }
    config.fog_directory     =  ENV['haru-pf-app']
  end
end