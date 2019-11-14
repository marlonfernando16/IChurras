require "application_system_test_case"

class TaskOrganizersTest < ApplicationSystemTestCase
  setup do
    @task_organizer = task_organizers(:one)
  end

  test "visiting the index" do
    visit task_organizers_url
    assert_selector "h1", text: "Task Organizers"
  end

  test "creating a Task organizer" do
    visit task_organizers_url
    click_on "New Task Organizer"

    fill_in "Organizer", with: @task_organizer.organizer_id
    check "Status" if @task_organizer.status
    fill_in "Task", with: @task_organizer.task_id
    click_on "Create Task organizer"

    assert_text "Task organizer was successfully created"
    click_on "Back"
  end

  test "updating a Task organizer" do
    visit task_organizers_url
    click_on "Edit", match: :first

    fill_in "Organizer", with: @task_organizer.organizer_id
    check "Status" if @task_organizer.status
    fill_in "Task", with: @task_organizer.task_id
    click_on "Update Task organizer"

    assert_text "Task organizer was successfully updated"
    click_on "Back"
  end

  test "destroying a Task organizer" do
    visit task_organizers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task organizer was successfully destroyed"
  end
end
