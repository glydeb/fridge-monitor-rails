require "test_helper"

class FridgesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fridge = fridges(:one)
  end

  test "should get index" do
    get fridges_url
    assert_response :success
  end

  test "should get new" do
    get new_fridge_url
    assert_response :success
  end

  test "should create fridge" do
    assert_difference("Fridge.count") do
      post fridges_url, params: { fridge: { has_freezer: @fridge.has_freezer, has_refrig: @fridge.has_refrig, is_healthy: @fridge.is_healthy, last_alerted: @fridge.last_alerted, last_reported: @fridge.last_reported, name: @fridge.name, report_frequency: @fridge.report_frequency, user_id: @fridge.user_id } }
    end

    assert_redirected_to fridge_url(Fridge.last)
  end

  test "should show fridge" do
    get fridge_url(@fridge)
    assert_response :success
  end

  test "should get edit" do
    get edit_fridge_url(@fridge)
    assert_response :success
  end

  test "should update fridge" do
    patch fridge_url(@fridge), params: { fridge: { has_freezer: @fridge.has_freezer, has_refrig: @fridge.has_refrig, is_healthy: @fridge.is_healthy, last_alerted: @fridge.last_alerted, last_reported: @fridge.last_reported, name: @fridge.name, report_frequency: @fridge.report_frequency, user_id: @fridge.user_id } }
    assert_redirected_to fridge_url(@fridge)
  end

  test "should destroy fridge" do
    assert_difference("Fridge.count", -1) do
      delete fridge_url(@fridge)
    end

    assert_redirected_to fridges_url
  end
end
