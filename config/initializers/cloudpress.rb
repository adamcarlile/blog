Cloudpress.configure do |config|
  config.app_key        = ENV['CLOUDPRESS_APP_ID']
  config.app_secret     = ENV['CLOUDPRESS_APP_SECRET']
  config.app_token      = ENV['CLOUDPRESS_APP_TOKEN']
  config.draft_user     = ENV['CLOUDPRESS_HTTP_AUTH_USER']
  config.draft_password = ENV['CLOUDPRESS_HTTP_AUTH_PASSWORD']
end
