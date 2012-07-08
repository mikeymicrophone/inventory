class Container < ActiveRecord::Base
  belongs_to :user
  has_many :placements
  has_many :items, :through => :placements
  
  attr_accessible :image, :name
  
  mount_uploader :image, ImageUploader
end
