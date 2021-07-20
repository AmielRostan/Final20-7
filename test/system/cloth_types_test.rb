require "application_system_test_case"

class ClothTypesTest < ApplicationSystemTestCase
  setup do
    @cloth_type = cloth_types(:one)
  end

  test "visiting the index" do
    visit cloth_types_url
    assert_selector "h1", text: "Cloth Types"
  end

  test "creating a Cloth type" do
    visit cloth_types_url
    click_on "New Cloth Type"

    fill_in "Name", with: @cloth_type.name
    click_on "Create Cloth type"

    assert_text "Cloth type was successfully created"
    click_on "Back"
  end

  test "updating a Cloth type" do
    visit cloth_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cloth_type.name
    click_on "Update Cloth type"

    assert_text "Cloth type was successfully updated"
    click_on "Back"
  end

  test "destroying a Cloth type" do
    visit cloth_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cloth type was successfully destroyed"
  end
end
