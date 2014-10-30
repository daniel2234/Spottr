class Spot < ActiveRecord::Base
  belongs_to :user
  default_scope {order("created_at DESC")}
  belongs_to :content, polymorphic: true

  def self.text_spots
  	where(content_type: 'TextSpot')
  end
end
