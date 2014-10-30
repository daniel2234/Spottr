class Dashboard
	def initialize user
		@user = user
	end

	def new_text_spot
		TextSpot.new
	end

	def new_photo_spot
		PhotoSpot.new
	end

	def timeline
		Timeline.new(@user)
	end
end