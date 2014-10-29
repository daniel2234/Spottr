class SpotsController < ApplicationController
	def show
		@spot = Spot.find(params[:id])
	end


	def create
		spot = current_user.spots.build(spot_parameters)
		if spot.save
			redirect_to dashboard_path
		else
			flash.alert = "Could not spot."
			redirect_to dashboard_path
		end
	end


	private

	def spot_parameters
		params.require(:spot).permit(:body)
	end



end