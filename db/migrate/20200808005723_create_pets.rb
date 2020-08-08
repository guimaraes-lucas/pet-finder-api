class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.float :weight
      t.string :city
      t.references :type_pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
