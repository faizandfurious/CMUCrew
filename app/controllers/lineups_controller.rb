class LineupsController < ApplicationController
  # GET /lineups
  # GET /lineups.json
  def index
    @lineups = Lineup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lineups }
    end
  end

  # GET /lineups/1
  # GET /lineups/1.json
  def show
    @lineup = Lineup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lineup }
    end
  end

  # GET /lineups/new
  # GET /lineups/new.json
  def new
    @lineup = Lineup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lineup }
    end
  end

  # GET /lineups/1/edit
  def edit
    @lineup = Lineup.find(params[:id])
  end

  # POST /lineups
  # POST /lineups.json
  def create
    @lineup = Lineup.new(params[:lineup])

    respond_to do |format|
      if @lineup.save
        format.html { redirect_to @lineup, notice: 'Lineup was successfully created.' }
        format.json { render json: @lineup, status: :created, location: @lineup }
      else
        format.html { render action: "new" }
        format.json { render json: @lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lineups/1
  # PUT /lineups/1.json
  def update
    @lineup = Lineup.find(params[:id])

    respond_to do |format|
      if @lineup.update_attributes(params[:lineup])
        format.html { redirect_to @lineup, notice: 'Lineup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineups/1
  # DELETE /lineups/1.json
  def destroy
    @lineup = Lineup.find(params[:id])
    @lineup.destroy

    respond_to do |format|
      format.html { redirect_to lineups_url }
      format.json { head :no_content }
    end
  end
end
