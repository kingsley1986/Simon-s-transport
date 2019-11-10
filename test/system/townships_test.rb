require "application_system_test_case"

class TownshipsTest < ApplicationSystemTestCase
  setup do
    @township = townships(:one)
  end

  test "visiting the index" do
    visit townships_url
    assert_selector "h1", text: "Townships"
  end

  test "creating a Township" do
    visit townships_url
    click_on "New Township"

    fill_in "Description", with: @township.description
    fill_in "Image", with: @township.image
    fill_in "Title", with: @township.title
    click_on "Create Township"

    assert_text "Township was successfully created"
    click_on "Back"
  end

  test "updating a Township" do
    visit townships_url
    click_on "Edit", match: :first

    fill_in "Description", with: @township.description
    fill_in "Image", with: @township.image
    fill_in "Title", with: @township.title
    click_on "Update Township"

    assert_text "Township was successfully updated"
    click_on "Back"
  end

  test "destroying a Township" do
    visit townships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Township was successfully destroyed"
  end
end
