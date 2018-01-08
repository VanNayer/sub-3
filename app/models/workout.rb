class Workout < ApplicationRecord
  belongs_to :workout_template
  belongs_to :plan
end
