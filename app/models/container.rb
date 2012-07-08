class Container < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :image, :name
  
  mount_uploader :image, ImageUploader
end
