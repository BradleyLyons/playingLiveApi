class BandsController < ApplicationController
  before_action :set_band, only: [:show, :update, :destroy]

  # GET /bands
  # GET /bands.json
  def index
    if params.has_key?(:bandName)
      @bands = Band.where(bandName: params[:bandName])
    else
      @bands = Band.all
    end
    

    render json: @bands
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
    render json: @band
  end

  # POST /bands
  # POST /bands.json
  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created, location: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bands/1
  # PATCH/PUT /bands/1.json
  def update
    @band = Band.find(params[:id])

    if @band.update(band_params)
      head :no_content
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band.destroy

    head :no_content
  end

  private

    def set_band
      @band = Band.find(params[:id])
    end

    def band_params
      params.require(:band).permit(:bandName, :bandPhone, :genre_id, :user_id)
    end
end
