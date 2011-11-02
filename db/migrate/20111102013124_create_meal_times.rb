class CreateMealTimes < ActiveRecord::Migration
  def change
    create_table :meal_times do |t|
      t.string :meal_time

      t.timestamps
    end
  end
end
