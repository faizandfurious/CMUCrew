class UserLineupsController < ApplicationController
  # GET /user_lineups
  # GET /user_lineups.json
  def index
    @user_lineups = UserLineup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_lineups }
    end
  end

  # GET /user_lineups/1
  # GET /user_lineups/1.json
  def show
    @user_lineup = UserLineup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_lineup }
    end
  end

  # GET /user_lineups/new
  # GET /user_lineups/new.json
  def new
    @user_lineup = UserLineup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_lineup }
    end
  end

  # GET /user_lineups/1/edit
  def edit
    @user_lineup = UserLineup.find(params[:id])
  end

  # POST /user_lineups
  # POST /user_lineups.json
  def create
    @user_lineup = UserLineup.new(params[:user_lineup])

    respond_to do |format|
      if @user_lineup.save
        format.html { redirect_to @user_lineup, notice: 'User lineup was successfully created.' }
        format.json { render json: @user_lineup, status: :created, location: @user_lineup }
      else
        format.html { render action: "new" }
        format.json { render json: @user_lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_lineups/1
  # PUT /user_lineups/1.json
  def update
    @user_lineup = UserLineup.find(params[:id])

    respond_to do |format|
      if @user_lineup.update_attributes(params[:user_lineup])
        format.html { redirect_to @user_lineup, notice: 'User lineup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_lineup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_lineups/1
  # DELETE /user_lineups/1.json
  def destroy
    @user_lineup = UserLineup.find(params[:id])
    @user_lineup.destroy

    respond_to do |format|
      format.html { redirect_to user_lineups_url }
      format.json { head :no_content }
    end
  end
end
