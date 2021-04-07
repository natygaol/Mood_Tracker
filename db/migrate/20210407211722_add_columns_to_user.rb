class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :age, :string
    add_column :users, :previous_illnesses, :string
    add_column :users, :specialty, :string
    add_column :users, :gender, :string
    add_column :users, :doctor, :boolean
  end
end
