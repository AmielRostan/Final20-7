require "test_helper"

class ClothTransmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloth_transmission = cloth_transmissions(:one)
  end

  test "should get index" do
    get cloth_transmissions_url
    assert_response :success
  end

  test "should get new" do
    get new_cloth_transmission_url
    assert_response :success
  end

  test "should create cloth_transmission" do
    assert_difference('ClothTransmission.count') do
      post cloth_transmissions_url, params: { cloth_transmission: { cloth_id: @cloth_transmission.cloth_id, transmission_id: @cloth_transmission.transmission_id } }
    end

    assert_redirected_to cloth_transmission_url(ClothTransmission.last)
  end

  test "should show cloth_transmission" do
    get cloth_transmission_url(@cloth_transmission)
    assert_response :success
  end

  test "should get edit" do
    get edit_cloth_transmission_url(@cloth_transmission)
    assert_response :success
  end

  test "should update cloth_transmission" do
    patch cloth_transmission_url(@cloth_transmission), params: { cloth_transmission: { cloth_id: @cloth_transmission.cloth_id, transmission_id: @cloth_transmission.transmission_id } }
    assert_redirected_to cloth_transmission_url(@cloth_transmission)
  end

  test "should destroy cloth_transmission" do
    assert_difference('ClothTransmission.count', -1) do
      delete cloth_transmission_url(@cloth_transmission)
    end

    assert_redirected_to cloth_transmissions_url
  end
end
