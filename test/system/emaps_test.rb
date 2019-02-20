require "application_system_test_case"

class EmapsTest < ApplicationSystemTestCase
  setup do
    @emap = emaps(:one)
  end

  test "visiting the index" do
    visit emaps_url
    assert_selector "h1", text: "Emaps"
  end

  test "creating a Emap" do
    visit emaps_url
    click_on "New Emap"

    fill_in "Capacity", with: @emap.capacity
    fill_in "Country", with: @emap.country
    fill_in "Description", with: @emap.description
    fill_in "Latitude", with: @emap.latitude
    fill_in "Longitude", with: @emap.longitude
    fill_in "Name", with: @emap.name
    fill_in "Type sys", with: @emap.type_sys
    click_on "Create Emap"

    assert_text "Emap was successfully created"
    click_on "Back"
  end

  test "updating a Emap" do
    visit emaps_url
    click_on "Edit", match: :first

    fill_in "Capacity", with: @emap.capacity
    fill_in "Country", with: @emap.country
    fill_in "Description", with: @emap.description
    fill_in "Latitude", with: @emap.latitude
    fill_in "Longitude", with: @emap.longitude
    fill_in "Name", with: @emap.name
    fill_in "Type sys", with: @emap.type_sys
    click_on "Update Emap"

    assert_text "Emap was successfully updated"
    click_on "Back"
  end

  test "destroying a Emap" do
    visit emaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emap was successfully destroyed"
  end
end
