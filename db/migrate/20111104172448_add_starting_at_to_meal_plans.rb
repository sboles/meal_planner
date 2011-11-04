class AddStartingAtToMealPlans < ActiveRecord::Migration
  def change
    add_column :meal_plans, :starting_at, :datetime
  end
end
