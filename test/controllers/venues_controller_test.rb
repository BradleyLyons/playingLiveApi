require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  setup do
    @venue = venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venues)
  end

  test "should create venue" do
    assert_difference('Venue.count') do
      post :create, venue: { lat: @venue.lat, lon: @venue.lon, user_id: @venue.user_id, venueAddress: @venue.venueAddress, venueCity: @venue.venueCity, venueName: @venue.venueName, venueState: @venue.venueState, venueZip: @venue.venueZip }
    end

    assert_response 201
  end

  test "should show venue" do
    get :show, id: @venue
    assert_response :success
  end

  test "should update venue" do
    put :update, id: @venue, venue: { lat: @venue.lat, lon: @venue.lon, user_id: @venue.user_id, venueAddress: @venue.venueAddress, venueCity: @venue.venueCity, venueName: @venue.venueName, venueState: @venue.venueState, venueZip: @venue.venueZip }
    assert_response 204
  end

  test "should destroy venue" do
    assert_difference('Venue.count', -1) do
      delete :destroy, id: @venue
    end

    assert_response 204
  end
end
