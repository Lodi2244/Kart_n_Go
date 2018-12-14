require 'test_helper'

class AvailableTimeSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_time_slot = available_time_slots(:one)
  end

  test "should get index" do
    get available_time_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_available_time_slot_url
    assert_response :success
  end

  test "should create available_time_slot" do
    assert_difference('AvailableTimeSlot.count') do
      post available_time_slots_url, params: { available_time_slot: { hour: @available_time_slot.hour, references: @available_time_slot.references } }
    end

    assert_redirected_to available_time_slot_url(AvailableTimeSlot.last)
  end

  test "should show available_time_slot" do
    get available_time_slot_url(@available_time_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_time_slot_url(@available_time_slot)
    assert_response :success
  end

  test "should update available_time_slot" do
    patch available_time_slot_url(@available_time_slot), params: { available_time_slot: { hour: @available_time_slot.hour, references: @available_time_slot.references } }
    assert_redirected_to available_time_slot_url(@available_time_slot)
  end

  test "should destroy available_time_slot" do
    assert_difference('AvailableTimeSlot.count', -1) do
      delete available_time_slot_url(@available_time_slot)
    end

    assert_redirected_to available_time_slots_url
  end
end
