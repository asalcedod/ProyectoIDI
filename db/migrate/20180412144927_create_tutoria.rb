class CreateTutoria < ActiveRecord::Migration[5.1]
  def change
    create_table :tutoria do |t|
      t.string :materia
      t.string :monitor
      t.string :fecha
      t.text :salon

      t.timestamps
    end
  end
end
