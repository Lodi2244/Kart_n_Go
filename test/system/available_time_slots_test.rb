require "application_system_test_case"

class AvailableTimeSlotsTest < ApplicationSystemTestCase
  setup do
    @available_time_slot = available_time_slots(:one)
  end

  test "visiting the index" do
    visit available_time_slots_url
    assert_selector "h1", text: "Available Time Slots"
  end

  test "creating a Available time slot" do
    visit available_time_slots_url
    click_on "New Available Time Slot"

    fill_in "Hour", with: @available_time_slot.hour
    fill_in "References", with: @available_time_slot.references
    click_on "Create Available time slot"

    assert_text "Available time slot was successfully created"
    click_on "Back"
  end

  test "updating a Available time slot" do
    visit available_time_slots_url
    click_on "Edit", match: :first

    fill_in "Hour", with: @available_time_slot.hour
    fill_in "References", with: @available_time_slot.references
    click_on "Update Available time slot"

    assert_text "Available time slot was successfully updated"
    click_on "Back"
  end

  test "destroying a Available time slot" do
    visit available_time_slots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Available time slot was successfully destroyed"
  end
end
