require "application_system_test_case"

class ClothTransmissionsTest < ApplicationSystemTestCase
  setup do
    @cloth_transmission = cloth_transmissions(:one)
  end

  test "visiting the index" do
    visit cloth_transmissions_url
    assert_selector "h1", text: "Cloth Transmissions"
  end

  test "creating a Cloth transmission" do
    visit cloth_transmissions_url
    click_on "New Cloth Transmission"

    fill_in "Cloth", with: @cloth_transmission.cloth_id
    fill_in "Transmission", with: @cloth_transmission.transmission_id
    click_on "Create Cloth transmission"

    assert_text "Cloth transmission was successfully created"
    click_on "Back"
  end

  test "updating a Cloth transmission" do
    visit cloth_transmissions_url
    click_on "Edit", match: :first

    fill_in "Cloth", with: @cloth_transmission.cloth_id
    fill_in "Transmission", with: @cloth_transmission.transmission_id
    click_on "Update Cloth transmission"

    assert_text "Cloth transmission was successfully updated"
    click_on "Back"
  end

  test "destroying a Cloth transmission" do
    visit cloth_transmissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cloth transmission was successfully destroyed"
  end
end
