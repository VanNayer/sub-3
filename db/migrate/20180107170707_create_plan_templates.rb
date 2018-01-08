class CreatePlanTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_templates do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
