class Organizer < ApplicationRecord
    has_many :task_organizers
    has_many :tasks, through: :task_organizer
    has_many :guests

    accepts_nested_attributes_for :guests, reject_if: :all_blank, allow_destroy: true
end
