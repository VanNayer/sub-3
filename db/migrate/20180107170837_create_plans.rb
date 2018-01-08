class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :plan_template, foreign_key: true

      t.timestamps
    end
  end
end
