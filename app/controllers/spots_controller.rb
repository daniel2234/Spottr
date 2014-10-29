class SpotsController < ApplicationController
	def create
		spot = current_user.spots.build(spot_parameters)
		spot.save
		redirect_to dashboard_path
	end


	private

	def spot_parameters
		params.require(:spot).permit(:body)
	end



end