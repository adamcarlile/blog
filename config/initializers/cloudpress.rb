Cloudpress.configure do |config|
  config.app_id     = ENV['CLOUDPRESS_APP_ID']
  config.app_secret = ENV['CLOUDPRESS_APP_SECRET']
  config.app_token  = ENV['CLOUDPRESS_APP_TOKEN']
end
