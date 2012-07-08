class Item < ActiveRecord::Base
  belongs_to :user
  has_many :placements
  has_many :containers, :through => :placements
  
  attr_accessible :description, :image, :name, :value, :vintage
  
  mount_uploader :image, ImageUploader
  
  def container
    containers.last
  end
end
