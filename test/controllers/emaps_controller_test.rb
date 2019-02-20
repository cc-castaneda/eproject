require 'test_helper'

class EmapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emap = emaps(:one)
  end

  test "should get index" do
    get emaps_url
    assert_response :success
  end

  test "should get new" do
    get new_emap_url
    assert_response :success
  end

  test "should create emap" do
    assert_difference('Emap.count') do
      post emaps_url, params: { emap: { capacity: @emap.capacity, country: @emap.country, description: @emap.description, latitude: @emap.latitude, longitude: @emap.longitude, name: @emap.name, type_sys: @emap.type_sys } }
    end

    assert_redirected_to emap_url(Emap.last)
  end

  test "should show emap" do
    get emap_url(@emap)
    assert_response :success
  end

  test "should get edit" do
    get edit_emap_url(@emap)
    assert_response :success
  end

  test "should update emap" do
    patch emap_url(@emap), params: { emap: { capacity: @emap.capacity, country: @emap.country, description: @emap.description, latitude: @emap.latitude, longitude: @emap.longitude, name: @emap.name, type_sys: @emap.type_sys } }
    assert_redirected_to emap_url(@emap)
  end

  test "should destroy emap" do
    assert_difference('Emap.count', -1) do
      delete emap_url(@emap)
    end

    assert_redirected_to emaps_url
  end
end
