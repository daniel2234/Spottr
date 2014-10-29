class TextSpotsController < ApplicationController
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
		TextSpot.new(text_spot_parameters)
	end

	def text_spot_parameters
		params.require(:text_spot).permit(:body)
	end



end