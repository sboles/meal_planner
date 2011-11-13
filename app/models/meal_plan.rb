class MealPlan < ActiveRecord::Base
  has_many :meal_plan_meals
  has_many :meals, through: :meal_plan_meals, dependent: :destroy
  DAYS_OF_WEEK = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

  def fill_meal_plan
    fill_with_meal_time('lunch')
    fill_with_meal_time('dinner')
  end

  def lunch_meals
    meal_time_meals('lunch')
  end

  def dinner_meals
    meal_time_meals('dinner')
  end

  private
  def fill_with_meal_time(meal_time)
    # add meal_time meals
    if (meal_ids.empty?)
      meals_to_add = TagType.find_by_name('meal_times').tags.find_by_name(meal_time).meal_time_meals.where(:active => true).sample(DAYS_OF_WEEK.size)
    else
      meals_to_add = TagType.find_by_name('meal_times').tags.find_by_name(meal_time).meal_time_meals.where(:active => true).where('meals.id not in (?)', meal_ids).sample(DAYS_OF_WEEK.size)
    end
    meals_to_add.fill(nil, meals_to_add.size..DAYS_OF_WEEK.size-1)
    meals_to_add.each_index do |meal|
      meal_plan_meal = MealPlanMeal.new
      meal_plan_meal.meal = meals_to_add[meal]
      meal_plan_meal.meal_plan = self
      meal_plan_meal.meal_time = meal_time
      meal_plan_meal.day = DAYS_OF_WEEK[meal]
      meal_plan_meal.save
    end
  end

  def meal_time_meals(meal_time)
    meal_plan_meals.select do |meal| meal.meal_time == meal_time end
  end

end
