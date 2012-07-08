class Placement < ActiveRecord::Base
  belongs_to :item
  belongs_to :container
  belongs_to :user
  attr_accessible :container_id, :item_id
end
