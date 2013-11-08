require 'test_helper'

class StaticSiteControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get terms_conditions" do
    get :terms_conditions
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

  test "should get rajasthan" do
    get :rajasthan
    assert_response :success
  end

  test "should get demo_family" do
    get :demo_family
    assert_response :success
  end

  test "should get festivals" do
    get :festivals
    assert_response :success
  end

  test "should get godwisekuldevi" do
    get :godwisekuldevi
    assert_response :success
  end

  test "should get gotra" do
    get :gotra
    assert_response :success
  end

  test "should get kuldevisedetails" do
    get :kuldevisedetails
    assert_response :success
  end

  test "should get surnamewisekuldevi" do
    get :surnamewisekuldevi
    assert_response :success
  end

  test "should get mjblog" do
    get :mjblog
    assert_response :success
  end

  test "should get serach" do
    get :serach
    assert_response :success
  end

  test "should get follow_us" do
    get :follow_us
    assert_response :success
  end

end
