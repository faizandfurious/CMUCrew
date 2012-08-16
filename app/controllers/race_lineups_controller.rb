class RaceLineupsController < ApplicationController
  before_filter :authenticate_user!
  # GET /race_lineups
  # GET /race_lineups.json
  def index
    @race_lineups = RaceLineup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @race_lineups }
    end
  end

  # GET /race_lineups/1
  # GET /race_lineups/1.json
  def show
    @race_lineup = RaceLineup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race_lineup }
    end
  end

  # GET /race_lineups/new
  # GET /race_lineups/new.json
  def new
    @race_lineup = RaceLineup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @race_lineup }
    end
  end

  # GET /race_lineups/1/edit
  def edit
    @race_lineup = RaceLineup.find(params[:id])
  end

  # POST /race_lineups
  # POST /race_lineups.json
  def create
    @race_lineup = RaceLineup.new(params[:race_lineup])

    respond_to do |format|
      if @race_lineup.save
        format.html { redirect_to @race_lineup, notice: 'Race lineup was successfully created.' }
        format.json { render json: @race_lineup, status: :created, location: @race_lineup }
      else
        format.html { render action: "new" }
        format.json { render json: @race_lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /race_lineups/1
  # PUT /race_lineups/1.json
  def update
    @race_lineup = RaceLineup.find(params[:id])

    respond_to do |format|
      if @race_lineup.update_attributes(params[:race_lineup])
        format.html { redirect_to @race_lineup, notice: 'Race lineup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @race_lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_lineups/1
  # DELETE /race_lineups/1.json
  def destroy
    @race_lineup = RaceLineup.find(params[:id])
    @race_lineup.destroy

    respond_to do |format|
      format.html { redirect_to race_lineups_url }
      format.json { head :no_content }
    end
  end
end
