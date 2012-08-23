class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => 'index'

  def index
  	if(Practice.before8)
  		@practice = Practice.tomorrow.first
  	else
  		@practice = Practice.tomorrow.second
  	end
    if(current_user)
      @user_fundraisers = UserFundraiser.current_user(current_user)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @practices }
  end
  end
end
