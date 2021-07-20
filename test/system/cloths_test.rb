require "application_system_test_case"

class ClothsTest < ApplicationSystemTestCase
  setup do
    @cloth = cloths(:one)
  end

  test "visiting the index" do
    visit cloths_url
    assert_selector "h1", text: "Cloths"
  end

  test "creating a Cloth" do
    visit cloths_url
    click_on "New Cloth"

    fill_in "Brand", with: @cloth.brand_id
    fill_in "Clothing type", with: @cloth.clothing_type_id
    fill_in "Color", with: @cloth.color
    fill_in "Description", with: @cloth.description
    fill_in "Name", with: @cloth.name
    click_on "Create Cloth"

    assert_text "Cloth was successfully created"
    click_on "Back"
  end

  test "updating a Cloth" do
    visit cloths_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @cloth.brand_id
    fill_in "Clothing type", with: @cloth.clothing_type_id
    fill_in "Color", with: @cloth.color
    fill_in "Description", with: @cloth.description
    fill_in "Name", with: @cloth.name
    click_on "Update Cloth"

    assert_text "Cloth was successfully updated"
    click_on "Back"
  end

  test "destroying a Cloth" do
    visit cloths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cloth was successfully destroyed"
  end
end
