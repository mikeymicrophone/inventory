class Item < ActiveRecord::Base
  attr_accessible :description, :image, :name, :value, :vintage
  
  mount_uploader :image, ImageUploader
end
