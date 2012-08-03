module FundraisersHelper

	def sign_up(user, fundraiser)
		@user_fundraiser = UserFundraiser.new
		@user_fundraiser.user_id = user
		@user_fundraiser.fundraiser_id = fundraiser
		@user_fundraiser.save
	end

end
