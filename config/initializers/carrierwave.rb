
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
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.storage = :s3

    config.fog_credentials = {
        :provider               => 'AWS',                        # required
        :aws_access_key_id      => 'AKIAIT25W2UA7RFIMWAQ',                        # required
        :aws_secret_access_key  => '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',                     # required
    }
    #config.fog_directory  = 'production'                             # required
  end
end
