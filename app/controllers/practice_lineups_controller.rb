class PracticeLineupsController < ApplicationController
  before_filter :authenticate_user!
  # GET /practice_lineups
  # GET /practice_lineups.json
  def index
    @practice_lineups = PracticeLineup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @practice_lineups }
    end
  end

  # GET /practice_lineups/1
  # GET /practice_lineups/1.json
  def show
    @practice_lineup = PracticeLineup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @practice_lineup }
    end
  end

  # GET /practice_lineups/new
  # GET /practice_lineups/new.json
  def new
    @practice_lineup = PracticeLineup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @practice_lineup }
    end
  end

  # GET /practice_lineups/1/edit
  def edit
    @practice_lineup = PracticeLineup.find(params[:id])
  end

  # POST /practice_lineups
  # POST /practice_lineups.json
  def create
    @practice_lineup = PracticeLineup.new(params[:practice_lineup])

    respond_to do |format|
      if @practice_lineup.save
        format.html { redirect_to @practice_lineup, notice: 'Practice lineup was successfully created.' }
        format.json { render json: @practice_lineup, status: :created, location: @practice_lineup }
      else
        format.html { render action: "new" }
        format.json { render json: @practice_lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /practice_lineups/1
  # PUT /practice_lineups/1.json
  def update
    @practice_lineup = PracticeLineup.find(params[:id])

    respond_to do |format|
      if @practice_lineup.update_attributes(params[:practice_lineup])
        format.html { redirect_to @practice_lineup, notice: 'Practice lineup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @practice_lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practice_lineups/1
  # DELETE /practice_lineups/1.json
  def destroy
    @practice_lineup = PracticeLineup.find(params[:id])
    @practice_lineup.destroy

    respond_to do |format|
      format.html { redirect_to practice_lineups_url }
      format.json { head :no_content }
    end
  end
end
