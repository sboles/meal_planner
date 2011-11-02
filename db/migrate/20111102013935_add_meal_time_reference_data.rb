class AddMealTimeReferenceData < ActiveRecord::Migration

  def up
    create_meal_time("Lunch")
    create_meal_time("Dinner")
  end

  def down
    delete_meal_time("Lunch")
    delete_meal_time("Dinner")
  end

  def delete_meal_time(_meal_time)
    meal_time = MealTime.where(meal_time:_meal_time)
    MealTime.delete(meal_time) if meal_time
  end

  def create_meal_time(_meal_time)
    meal_time = MealTime.new(meal_time:_meal_time)
    meal_time.save
  end

end
