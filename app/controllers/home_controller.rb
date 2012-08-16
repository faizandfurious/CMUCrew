class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@practices = Practice.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @practices }
  end
  end
end
