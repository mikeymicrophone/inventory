class Listing < ActiveRecord::Base
  belongs_to :item
  belongs_to :list
  belongs_to :user
  attr_accessible :position, :list_id, :item_id
  
  acts_as_list :scope => :list_id
end
