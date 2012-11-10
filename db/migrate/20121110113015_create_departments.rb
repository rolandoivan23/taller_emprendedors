class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
