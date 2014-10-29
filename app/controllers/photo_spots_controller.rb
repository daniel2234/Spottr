class PhotoSpotsController < ApplicationController
def create
	content = build_content
	spot = current_user.spots.build(content: content)
	if spot.save
		redirect_to dashboard_path
	else
		flash.alert = "Could not spot."
		redirect_to dashboard_path
	end
end


	private

	def build_content
		PhotoSpot.new(photo_spot_parameters)
	end

	def photo_spot_parameters
		params.require(:photo_spot).permit(:image)
	end



end