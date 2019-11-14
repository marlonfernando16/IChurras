require 'test_helper'

class TaskOrganizersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_organizer = task_organizers(:one)
  end

  test "should get index" do
    get task_organizers_url
    assert_response :success
  end

  test "should get new" do
    get new_task_organizer_url
    assert_response :success
  end

  test "should create task_organizer" do
    assert_difference('TaskOrganizer.count') do
      post task_organizers_url, params: { task_organizer: { organizer_id: @task_organizer.organizer_id, status: @task_organizer.status, task_id: @task_organizer.task_id } }
    end

    assert_redirected_to task_organizer_url(TaskOrganizer.last)
  end

  test "should show task_organizer" do
    get task_organizer_url(@task_organizer)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_organizer_url(@task_organizer)
    assert_response :success
  end

  test "should update task_organizer" do
    patch task_organizer_url(@task_organizer), params: { task_organizer: { organizer_id: @task_organizer.organizer_id, status: @task_organizer.status, task_id: @task_organizer.task_id } }
    assert_redirected_to task_organizer_url(@task_organizer)
  end

  test "should destroy task_organizer" do
    assert_difference('TaskOrganizer.count', -1) do
      delete task_organizer_url(@task_organizer)
    end

    assert_redirected_to task_organizers_url
  end
end
