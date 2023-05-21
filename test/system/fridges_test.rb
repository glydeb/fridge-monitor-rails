require "application_system_test_case"

class FridgesTest < ApplicationSystemTestCase
  setup do
    @fridge = fridges(:one)
  end

  test "visiting the index" do
    visit fridges_url
    assert_selector "h1", text: "Fridges"
  end

  test "should create fridge" do
    visit fridges_url
    click_on "New fridge"

    check "Has freezer" if @fridge.has_freezer
    check "Has refrig" if @fridge.has_refrig
    check "Is healthy" if @fridge.is_healthy
    fill_in "Last alerted", with: @fridge.last_alerted
    fill_in "Last reported", with: @fridge.last_reported
    fill_in "Name", with: @fridge.name
    fill_in "Report frequency", with: @fridge.report_frequency
    fill_in "User", with: @fridge.user_id
    click_on "Create Fridge"

    assert_text "Fridge was successfully created"
    click_on "Back"
  end

  test "should update Fridge" do
    visit fridge_url(@fridge)
    click_on "Edit this fridge", match: :first

    check "Has freezer" if @fridge.has_freezer
    check "Has refrig" if @fridge.has_refrig
    check "Is healthy" if @fridge.is_healthy
    fill_in "Last alerted", with: @fridge.last_alerted
    fill_in "Last reported", with: @fridge.last_reported
    fill_in "Name", with: @fridge.name
    fill_in "Report frequency", with: @fridge.report_frequency
    fill_in "User", with: @fridge.user_id
    click_on "Update Fridge"

    assert_text "Fridge was successfully updated"
    click_on "Back"
  end

  test "should destroy Fridge" do
    visit fridge_url(@fridge)
    click_on "Destroy this fridge", match: :first

    assert_text "Fridge was successfully destroyed"
  end
end
