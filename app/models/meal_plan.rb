class MealPlan < ActiveRecord::Base
  has_many :meal_plan_meals
  has_many :meals, through: :meal_plan_meals

  def fill_meal_plan
    fill_with_meal_time("lunch")
    fill_with_meal_time("dinner")
  end

  private
  def fill_with_meal_time(meal_time)
    # add lunch meals
    7.times do 
      meal_to_add = TagType.find_by_name("meal_times").tags.find_by_name(meal_time).meal_time_meals.sample
      meal_plan_meal = MealPlanMeal.new 
      meal_plan_meal.meal = meal_to_add
      meal_plan_meal.meal_plan = self
      meal_plan_meal.save
    end
  end

end
