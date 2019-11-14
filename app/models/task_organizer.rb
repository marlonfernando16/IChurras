class TaskOrganizer < ApplicationRecord
  belongs_to :task
  belongs_to :organizer
end
