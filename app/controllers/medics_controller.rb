class MedicsController < ApplicationController
  before_action :set_medic, only: [:show, :update, :destroy]

  # GET /medics
  def index
    @medics = Medic.all

    render json: @medics
  end

  # GET /medics/1
  def show
    render json: @medic
  end

  # POST /medics
  def create
    @medic = Medic.new(medic_params)

    if @medic.save
      render json: @medic, status: :created, location: @medic
    else
      render json: @medic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medics/1
  def update
    if @medic.update(medic_params)
      render json: @medic
    else
      render json: @medic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medics/1
  def destroy
    @medic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medic
      @medic = Medic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medic_params
      params.require(:medic).permit(:name, :crm)
    end
end
