class EventItemsController < ApplicationController
  before_action :set_event_item, only: [:show, :update, :destroy]

  # GET /event_items
  # GET /event_items.json
  def index
    @event_items = EventItem.all

    render json: @event_items
  end

  # GET /event_items/1
  # GET /event_items/1.json
  def show
    render json: @event_item
  end

  # POST /event_items
  # POST /event_items.json
  def create
    @event_item = EventItem.new(event_item_params)

    if @event_item.save
      render json: @event_item, status: :created, location: @event_item
    else
      render json: @event_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_items/1
  # PATCH/PUT /event_items/1.json
  def update
    @event_item = EventItem.find(params[:id])

    if @event_item.update(event_item_params)
      head :no_content
    else
      render json: @event_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_items/1
  # DELETE /event_items/1.json
  def destroy
    @event_item.destroy

    head :no_content
  end

  private

    def set_event_item
      @event_item = EventItem.find(params[:id])
    end

    def event_item_params
      params.require(:event_item).permit(:band_id, :event_id)
    end
end
