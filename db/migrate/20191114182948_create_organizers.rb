class CreateOrganizers < ActiveRecord::Migration[5.2]
  def change
    create_table :organizers do |t|
      t.string :nome
      t.string :matricula
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
