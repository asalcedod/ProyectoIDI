class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.string :nombre
      t.string :apellido
      t.string :programa
      t.integer :semestre
      t.integer :cedula
      t.text :inf_contact

      t.timestamps
    end
  end
end
