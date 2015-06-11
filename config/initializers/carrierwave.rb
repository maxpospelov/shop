
if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end


# -----------------------------------------------------------------------
#Development
if Rails.env.development?
  CarrierWave.configure do |config|
    config.dropbox_app_key = "r9qns98vzubwyfd"
    config.dropbox_app_secret = "g8fw1jfhgtkmtzf"
    config.dropbox_access_token = "0shrqbt7nc3gx4p9"
    config.dropbox_access_token_secret = "z1cmivchcwn8iba"
    config.dropbox_user_id = "404889813"
    config.dropbox_access_type = "app_folder"
  end
end



# -----------------------------------------------------------------------
# Production
#if Rails.env.production?
#  CarrierWave.configure do |config|
#    config.cache_dir = "#{Rails.root}/tmp/uploads"
#    config.fog_credentials = {:provider => 'Google' }
#    config.fog_directory = "stuffit"
#    config.storage = :fog
#  end
#end

if Rails.env.production?
  CarrierWave.configure do |config|
    config.dropbox_app_key = "r9qns98vzubwyfd"
    config.dropbox_app_secret = "g8fw1jfhgtkmtzf"
    config.dropbox_access_token = "0shrqbt7nc3gx4p9"
    config.dropbox_access_token_secret = "z1cmivchcwn8iba"
    config.dropbox_user_id = "404889813"
    config.dropbox_access_type = "app_folder"
  end
end
