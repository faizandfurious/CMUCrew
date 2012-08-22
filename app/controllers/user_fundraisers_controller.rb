class UserFundraisersController < ApplicationController
  before_filter :authenticate_user!

  # GET /user_fundraisers
  # GET /user_fundraisers.json
  def index
    @user_fundraisers = UserFundraiser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_fundraisers }
    end
  end

  def my_fundraisers
    @user_fundraisers = UserFundraiser.current_user(current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_fundraisers }
    end
  end

  # GET /user_fundraisers/1
  # GET /user_fundraisers/1.json
  def show
    @user_fundraiser = UserFundraiser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_fundraiser }
    end
  end

  # GET /user_fundraisers/new
  # GET /user_fundraisers/new.json
  def new
    @user_fundraiser = UserFundraiser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_fundraiser }
    end
  end

  # GET /user_fundraisers/1/edit
  def edit
    @user_fundraiser = UserFundraiser.find(params[:id])
  end

  # POST /user_fundraisers
  # POST /user_fundraisers.json
  def create
    @user_fundraiser = UserFundraiser.new(params[:user_fundraiser])

    unless(params[:user_id].nil?)
      @user_fundraiser.user_id = params[:user_id]
      @user_fundraiser.fundraiser_id = params[:fundraiser_id]
    end

    respond_to do |format|
      if @user_fundraiser.save
        format.html { redirect_to @user_fundraiser, notice: 'User fundraiser was successfully created.' }
        format.json { render json: @user_fundraiser, status: :created, location: @user_fundraiser }
      else
        format.html { render action: "my_fundraisers" }
        format.json { render json: @user_fundraiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_fundraisers/1
  # PUT /user_fundraisers/1.json
  def update
    @user_fundraiser = UserFundraiser.find(params[:id])

    respond_to do |format|
      if @user_fundraiser.update_attributes(params[:user_fundraiser])
        format.html { redirect_to @user_fundraiser, notice: 'User fundraiser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_fundraiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_fundraisers/1
  # DELETE /user_fundraisers/1.json
  def destroy
    @user_fundraiser = UserFundraiser.find(params[:id])
    @user_fundraiser.destroy

    respond_to do |format|
      format.html { redirect_to user_fundraisers_url }
      format.json { head :no_content }
    end
  end
end
