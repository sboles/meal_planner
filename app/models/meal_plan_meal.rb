class MealPlanMeal < ActiveRecord::Base
  belongs_to :meal_plan
  belongs_to :meal
end
