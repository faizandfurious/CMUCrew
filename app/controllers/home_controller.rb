class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.all
    @fundraisers = Fundraiser.all
    @user_fundraisers = UserFundraiser.current_user(current_user)
  end
end
