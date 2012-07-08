CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AMAZON_KEY_ID'],
    :aws_secret_access_key  => ENV['AMAZON_KEY']
  }
  
  if Rails.env.development?
    config.fog_directory  = 'west_bayberry_inventory_dev'
  elsif Rails.env.production?
    config.fog_directory = 'west_bayberry_inventory'
  end
end
