class RowersController < ApplicationController
  before_filter :authenticate_user!
  # GET /rowers
  # GET /rowers.json
  def index
    @rowers = Rower.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rowers }
    end
  end

  # GET /rowers/1
  # GET /rowers/1.json
  def show
    @rower = Rower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rower }
    end
  end

  # GET /rowers/new
  # GET /rowers/new.json
  def new
    @rower = Rower.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rower }
    end
  end

  # GET /rowers/1/edit
  def edit
    @rower = Rower.find(params[:id])
  end

  # POST /rowers
  # POST /rowers.json
  def create
    @rower = Rower.new(params[:rower])

    respond_to do |format|
      if @rower.save
        format.html { redirect_to @rower, notice: 'Rower was successfully created.' }
        format.json { render json: @rower, status: :created, location: @rower }
      else
        format.html { render action: "new" }
        format.json { render json: @rower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rowers/1
  # PUT /rowers/1.json
  def update
    @rower = Rower.find(params[:id])

    respond_to do |format|
      if @rower.update_attributes(params[:rower])
        format.html { redirect_to @rower, notice: 'Rower was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rowers/1
  # DELETE /rowers/1.json
  def destroy
    @rower = Rower.find(params[:id])
    @rower.destroy

    respond_to do |format|
      format.html { redirect_to rowers_url }
      format.json { head :no_content }
    end
  end
end
