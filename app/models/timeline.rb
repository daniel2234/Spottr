class Timeline
	include ActiveModel::Model

	def initialize user
		@user = user
	end

	def spots
		Spot.where(user_id: spot_user_ids)
	end

	private

	def spot_user_ids
		[@user.id] + @user.followed_user_ids
	end


end