class DashboardsController < ApplicationController
	def show
		@spot = Spot.new
		@spots = current_user.spots
	end
end