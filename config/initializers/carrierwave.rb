
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
    config.storage = :file
    config.root = Rails.root.join "public/"
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
    #config.root = Rails.root.join('tmp')
    config.cache_dir = "#{Rails.root}/tmp/uploads"
  end
end
