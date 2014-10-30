class Spot < ActiveRecord::Base
  belongs_to :user
  default_scope {order("created_at DESC")}
  belongs_to :content, polymorphic: true

  def self.search term
  	text_spots = TextSpot.where("body LIKE ?", "%#{term}%") 
  	where(content_type: 'TextSpot', content_id: text_spots )
  end
  
end
