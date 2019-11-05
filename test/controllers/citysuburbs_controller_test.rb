require 'test_helper'

class CitysuburbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citysuburb = citysuburbs(:one)
  end

  test "should get index" do
    get citysuburbs_url
    assert_response :success
  end

  test "should get new" do
    get new_citysuburb_url
    assert_response :success
  end

  test "should create citysuburb" do
    assert_difference('Citysuburb.count') do
      post citysuburbs_url, params: { citysuburb: { description: @citysuburb.description, image: @citysuburb.image, title: @citysuburb.title } }
    end

    assert_redirected_to citysuburb_url(Citysuburb.last)
  end

  test "should show citysuburb" do
    get citysuburb_url(@citysuburb)
    assert_response :success
  end

  test "should get edit" do
    get edit_citysuburb_url(@citysuburb)
    assert_response :success
  end

  test "should update citysuburb" do
    patch citysuburb_url(@citysuburb), params: { citysuburb: { description: @citysuburb.description, image: @citysuburb.image, title: @citysuburb.title } }
    assert_redirected_to citysuburb_url(@citysuburb)
  end

  test "should destroy citysuburb" do
    assert_difference('Citysuburb.count', -1) do
      delete citysuburb_url(@citysuburb)
    end

    assert_redirected_to citysuburbs_url
  end
end
