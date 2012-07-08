require 'test_helper'

class PlacementsControllerTest < ActionController::TestCase
  setup do
    @placement = placements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placement" do
    assert_difference('Placement.count') do
      post :create, placement: {  }
    end

    assert_redirected_to placement_path(assigns(:placement))
  end

  test "should show placement" do
    get :show, id: @placement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @placement
    assert_response :success
  end

  test "should update placement" do
    put :update, id: @placement, placement: {  }
    assert_redirected_to placement_path(assigns(:placement))
  end

  test "should destroy placement" do
    assert_difference('Placement.count', -1) do
      delete :destroy, id: @placement
    end

    assert_redirected_to placements_path
  end
end
