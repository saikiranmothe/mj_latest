require 'test_helper'

class KuldeviMataControllerTest < ActionController::TestCase
  setup do
    @kuldevi_matum = kuldevi_mata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kuldevi_mata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kuldevi_matum" do
    assert_difference('KuldeviMatum.count') do
      post :create, kuldevi_matum: { address1: @kuldevi_matum.address1, city: @kuldevi_matum.city, contact_details: @kuldevi_matum.contact_details, country: @kuldevi_matum.country, how_to_reach: @kuldevi_matum.how_to_reach, name: @kuldevi_matum.name, state: @kuldevi_matum.state, street: @kuldevi_matum.street, website: @kuldevi_matum.website }
    end

    assert_redirected_to kuldevi_matum_path(assigns(:kuldevi_matum))
  end

  test "should show kuldevi_matum" do
    get :show, id: @kuldevi_matum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kuldevi_matum
    assert_response :success
  end

  test "should update kuldevi_matum" do
    put :update, id: @kuldevi_matum, kuldevi_matum: { address1: @kuldevi_matum.address1, city: @kuldevi_matum.city, contact_details: @kuldevi_matum.contact_details, country: @kuldevi_matum.country, how_to_reach: @kuldevi_matum.how_to_reach, name: @kuldevi_matum.name, state: @kuldevi_matum.state, street: @kuldevi_matum.street, website: @kuldevi_matum.website }
    assert_redirected_to kuldevi_matum_path(assigns(:kuldevi_matum))
  end

  test "should destroy kuldevi_matum" do
    assert_difference('KuldeviMatum.count', -1) do
      delete :destroy, id: @kuldevi_matum
    end

    assert_redirected_to kuldevi_mata_path
  end
end
