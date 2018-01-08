class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.belongs_to :workout_template, foreign_key: true
      t.belongs_to :plan, foreign_key: true

      t.timestamps
    end
  end
end
