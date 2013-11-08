require 'test_helper'

class GotrasControllerTest < ActionController::TestCase
  setup do
    @gotra = gotras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gotras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gotra" do
    assert_difference('Gotra.count') do
      post :create, gotra: { gotra: @gotra.gotra, kuldevi_matha: @gotra.kuldevi_matha, location: @gotra.location, surname: @gotra.surname }
    end

    assert_redirected_to gotra_path(assigns(:gotra))
  end

  test "should show gotra" do
    get :show, id: @gotra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gotra
    assert_response :success
  end

  test "should update gotra" do
    put :update, id: @gotra, gotra: { gotra: @gotra.gotra, kuldevi_matha: @gotra.kuldevi_matha, location: @gotra.location, surname: @gotra.surname }
    assert_redirected_to gotra_path(assigns(:gotra))
  end

  test "should destroy gotra" do
    assert_difference('Gotra.count', -1) do
      delete :destroy, id: @gotra
    end

    assert_redirected_to gotras_path
  end
end
