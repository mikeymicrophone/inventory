class Item < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :description, :image, :name, :value, :vintage
  
  mount_uploader :image, ImageUploader
end
