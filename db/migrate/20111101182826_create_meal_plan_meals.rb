class CreateMealPlanMeals < ActiveRecord::Migration
  def change
    create_table :meal_plan_meals do |t|
      t.text :custom_description

      t.timestamps
    end
  end
end
