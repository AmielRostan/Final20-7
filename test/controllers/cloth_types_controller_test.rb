require "test_helper"

class ClothTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloth_type = cloth_types(:one)
  end

  test "should get index" do
    get cloth_types_url
    assert_response :success
  end

  test "should get new" do
    get new_cloth_type_url
    assert_response :success
  end

  test "should create cloth_type" do
    assert_difference('ClothType.count') do
      post cloth_types_url, params: { cloth_type: { name: @cloth_type.name } }
    end

    assert_redirected_to cloth_type_url(ClothType.last)
  end

  test "should show cloth_type" do
    get cloth_type_url(@cloth_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_cloth_type_url(@cloth_type)
    assert_response :success
  end

  test "should update cloth_type" do
    patch cloth_type_url(@cloth_type), params: { cloth_type: { name: @cloth_type.name } }
    assert_redirected_to cloth_type_url(@cloth_type)
  end

  test "should destroy cloth_type" do
    assert_difference('ClothType.count', -1) do
      delete cloth_type_url(@cloth_type)
    end

    assert_redirected_to cloth_types_url
  end
end
