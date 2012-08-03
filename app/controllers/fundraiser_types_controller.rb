class FundraiserTypesController < ApplicationController
  before_filter :authenticate_user!
  # GET /fundraiser_types
  # GET /fundraiser_types.json
  def index
    @fundraiser_types = FundraiserType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fundraiser_types }
    end
  end

  # GET /fundraiser_types/1
  # GET /fundraiser_types/1.json
  def show
    @fundraiser_type = FundraiserType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fundraiser_type }
    end
  end

  # GET /fundraiser_types/new
  # GET /fundraiser_types/new.json
  def new
    @fundraiser_type = FundraiserType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fundraiser_type }
    end
  end

  # GET /fundraiser_types/1/edit
  def edit
    @fundraiser_type = FundraiserType.find(params[:id])
  end

  # POST /fundraiser_types
  # POST /fundraiser_types.json
  def create
    @fundraiser_type = FundraiserType.new(params[:fundraiser_type])

    respond_to do |format|
      if @fundraiser_type.save
        format.html { redirect_to @fundraiser_type, notice: 'Fundraiser type was successfully created.' }
        format.json { render json: @fundraiser_type, status: :created, location: @fundraiser_type }
      else
        format.html { render action: "new" }
        format.json { render json: @fundraiser_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fundraiser_types/1
  # PUT /fundraiser_types/1.json
  def update
    @fundraiser_type = FundraiserType.find(params[:id])

    respond_to do |format|
      if @fundraiser_type.update_attributes(params[:fundraiser_type])
        format.html { redirect_to @fundraiser_type, notice: 'Fundraiser type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fundraiser_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundraiser_types/1
  # DELETE /fundraiser_types/1.json
  def destroy
    @fundraiser_type = FundraiserType.find(params[:id])
    @fundraiser_type.destroy

    respond_to do |format|
      format.html { redirect_to fundraiser_types_url }
      format.json { head :no_content }
    end
  end
end
