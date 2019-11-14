class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :descricao
      t.string :valor
      t.integer :prazo

      t.timestamps
    end
  end
end
