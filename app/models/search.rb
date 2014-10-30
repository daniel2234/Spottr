class Search
	include ActiveModel::Model
	attr_reader :term
	def initialize options = {}
		@term = options.fetch(:term, "")
	end

	def spots
		Spot.search do 
			fulltext term
		end.results
	end
end