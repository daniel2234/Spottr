class Search
	include ActiveModel::Model
	attr_reader :term
	def initialize options = {}
		@term = options.fetch(:term, "")
	end

	def spots
		Spot.text_spots.where(content_id: text_spots)
	end

	def text_spots
		TextSpot.where("body LIKE ?", search_term)
	end

	def search_term
		"%#{term}%"
	end
end