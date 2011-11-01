class AddMealIdToMealPlanMeal < ActiveRecord::Migration
  def change
    add_column :meal_plan_meals, :meal_id, :int
  end
end
