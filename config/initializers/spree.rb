# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.use_s3 = true
  config.s3_bucket = ENV["s3_bucket"]
  config.s3_access_key = ENV["s3_access_key"]
  config.s3_secret = ENV["s3_secret"]
end

Spree.user_class = "Spree::LegacyUser"
