class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :update, :destroy]

  # GET /venues
  # GET /venues.json
  def index
    if params.has_key?(:name)
      @venues = Venue.where(venueName: params[:name])
    else
      @venuess = Venue.all
    end
    
    render json: @venues
  end

  # GET /venues/1
  # GET /venues/1.json
  def show
    render json: @venue
  end

  # POST /venues
  # POST /venues.json
  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      render json: @venue, status: :created, location: @venue
    else
      render json: @venue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /venues/1
  # PATCH/PUT /venues/1.json
  def update
    @venue = Venue.find(params[:id])

    if @venue.update(venue_params)
      head :no_content
    else
      render json: @venue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue.destroy

    head :no_content
  end

  private

    def set_venue
      @venue = Venue.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:venueName, :address, :venueCity, :venueState, :venueZip, :lat, :lon, :user_id)
    end
end
