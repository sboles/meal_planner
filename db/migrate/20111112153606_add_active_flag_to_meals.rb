class AddActiveFlagToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :active, :boolean, default: 1
  end
end
