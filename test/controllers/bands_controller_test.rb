require 'test_helper'

class BandsControllerTest < ActionController::TestCase
  setup do
    @band = bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bands)
  end

  test "should create band" do
    assert_difference('Band.count') do
      post :create, band: { bandName: @band.bandName, bandPhone: @band.bandPhone, genre_id: @band.genre_id, user_id: @band.user_id }
    end

    assert_response 201
  end

  test "should show band" do
    get :show, id: @band
    assert_response :success
  end

  test "should update band" do
    put :update, id: @band, band: { bandName: @band.bandName, bandPhone: @band.bandPhone, genre_id: @band.genre_id, user_id: @band.user_id }
    assert_response 204
  end

  test "should destroy band" do
    assert_difference('Band.count', -1) do
      delete :destroy, id: @band
    end

    assert_response 204
  end
end
