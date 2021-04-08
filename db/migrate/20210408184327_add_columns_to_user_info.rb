class AddColumnsToUserInfo < ActiveRecord::Migration[6.1]
  def change
    add_column :user_infos, :first_name, :string
    add_column :user_infos, :last_name, :string
    add_column :user_infos, :address, :string
    add_column :user_infos, :age, :string
    add_column :user_infos, :previous_illnesses, :string
    add_column :user_infos, :specialty, :string
    add_column :user_infos, :gender, :string
    add_column :user_infos, :doctor, :boolean
  end
end
