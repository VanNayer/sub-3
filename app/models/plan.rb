class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :plan_template
  has_many :workouts
end
