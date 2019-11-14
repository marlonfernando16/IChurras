class Task < ApplicationRecord
    has_many :task_organizers
    has_many :organizers, through: :task_organizers
    
end
