class HashtagsController < ApplicationController
	def show
		@hashtag = params[:id]
		@spots = Spot.search("##{:@hashtag}")
	end
end