class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.text :first_name
      t.text :last_name
      t.integer :age
      t.text :previous_illness
      t.text :adrress
      t.text :phone_number
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
