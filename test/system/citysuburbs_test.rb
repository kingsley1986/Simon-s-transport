require "application_system_test_case"

class CitysuburbsTest < ApplicationSystemTestCase
  setup do
    @citysuburb = citysuburbs(:one)
  end

  test "visiting the index" do
    visit citysuburbs_url
    assert_selector "h1", text: "Citysuburbs"
  end

  test "creating a Citysuburb" do
    visit citysuburbs_url
    click_on "New Citysuburb"

    fill_in "Description", with: @citysuburb.description
    fill_in "Image", with: @citysuburb.image
    fill_in "Title", with: @citysuburb.title
    click_on "Create Citysuburb"

    assert_text "Citysuburb was successfully created"
    click_on "Back"
  end

  test "updating a Citysuburb" do
    visit citysuburbs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @citysuburb.description
    fill_in "Image", with: @citysuburb.image
    fill_in "Title", with: @citysuburb.title
    click_on "Update Citysuburb"

    assert_text "Citysuburb was successfully updated"
    click_on "Back"
  end

  test "destroying a Citysuburb" do
    visit citysuburbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Citysuburb was successfully destroyed"
  end
end
