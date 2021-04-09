class CreateDoctorPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :doctor_posts do |t|
      t.text :recomendation
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
