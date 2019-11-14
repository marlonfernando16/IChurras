class CreateTaskOrganizers < ActiveRecord::Migration[5.2]
  def change
    create_table :task_organizers do |t|
      t.boolean :status
      t.references :task, foreign_key: true
      t.references :organizer, foreign_key: true

      t.timestamps
    end
  end
end
