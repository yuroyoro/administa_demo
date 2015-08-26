CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
    :aws_secret_access_key  => ENV['AWS_SECRET_KEY'],
    :region                 => ENV['AWS_REGION']
  }

  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
  config.fog_directory = ENV['S3_BUCKET_NAME']
  config.asset_host = "https://s3-ap-northeast-1.amazonaws.com/administa-demo"

  config.cache_storage = :fog #キャッシュの場所をS3に変更
  config.cache_dir = "#{Rails.root}/tmp/uploads" #for Heroku
end
