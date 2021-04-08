class CreateBeforeExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :before_exercises do |t|
      t.text :input_before
      t.integer :anxiety_level
      t.integer :motivation_level
      t.string :mood_level
      t.integer :cardiac_frequency
      t.integer :respiratory_rate
      t.string :pain
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
