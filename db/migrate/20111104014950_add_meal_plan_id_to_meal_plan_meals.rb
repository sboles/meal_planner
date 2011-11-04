class AddMealPlanIdToMealPlanMeals < ActiveRecord::Migration
  def change
    add_column :meal_plan_meals, :meal_plan_id, :integer
  end
end
