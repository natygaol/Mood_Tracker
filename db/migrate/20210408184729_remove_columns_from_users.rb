class RemoveColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :address, :string
    remove_column :users, :age, :string
    remove_column :users, :previous_illnesses, :string
    remove_column :users, :specialty, :string
    remove_column :users, :gender, :string
    remove_column :users, :doctor, :boolean
  end
end
