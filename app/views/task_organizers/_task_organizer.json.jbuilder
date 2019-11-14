json.extract! task_organizer, :id, :status, :task_id, :organizer_id, :created_at, :updated_at
json.url task_organizer_url(task_organizer, format: :json)
