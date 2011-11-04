class AddDayAndTimeToMealPlanMeal < ActiveRecord::Migration
  def change
    add_column :meal_plan_meals, :day, :string
    add_column :meal_plan_meals, :meal_time, :string
  end
end
