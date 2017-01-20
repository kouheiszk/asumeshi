class BoardingsController < ApplicationController
  before_action :set_boarding, only: [:show, :edit, :update, :destroy]

  # GET /boardings
  # GET /boardings.json
  def index
    @boardings = Boarding.all
  end

  # GET /boardings/1
  # GET /boardings/1.json
  def show
  end

  # GET /boardings/new
  def new
    @boarding = Boarding.new
  end

  # GET /boardings/1/edit
  def edit
  end

  # POST /boardings
  # POST /boardings.json
  def create
    @boarding = Boarding.new(boarding_params)

    respond_to do |format|
      if @boarding.save
        format.html { redirect_to @boarding, notice: 'Boarding was successfully created.' }
        format.json { render :show, status: :created, location: @boarding }
      else
        format.html { render :new }
        format.json { render json: @boarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boardings/1
  # PATCH/PUT /boardings/1.json
  def update
    respond_to do |format|
      if @boarding.update(boarding_params)
        format.html { redirect_to @boarding, notice: 'Boarding was successfully updated.' }
        format.json { render :show, status: :ok, location: @boarding }
      else
        format.html { render :edit }
        format.json { render json: @boarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boardings/1
  # DELETE /boardings/1.json
  def destroy
    @boarding.destroy
    respond_to do |format|
      format.html { redirect_to boardings_url, notice: 'Boarding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarding
      @boarding = Boarding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarding_params
      params.fetch(:boarding, {})
    end
end
