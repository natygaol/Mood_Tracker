class AddColumnToPatients < ActiveRecord::Migration[6.1]
  def change
    add_reference :patients, :doctor, null: false, foreign_key: true
  end
end
