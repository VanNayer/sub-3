class CreateWorkoutTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :workout_templates do |t|
      t.belongs_to :plan_template, foreign_key: true

      t.timestamps
    end
  end
end
