class DashboardsController < ApplicationController
	def show
		@text_spot = TextSpot.new
		@photo_spot = PhotoSpot.new
		@spots = current_user.spots
	end
end