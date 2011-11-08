require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
 
  test "find all" do 
    meals = Meal.all
    assert_not_nil meals
    assert meals.length > 0
  end  

  test "add a meal_time" do
    create_meal
  end

  test "retrieve a meal with meal times" do
    create_meal
    lunch = tags(:lunch)
    meals = lunch.meal_time_meals
    assert_not_nil meals
    assert meals.length > 0
    meals.each do |meal| 
      meal_times = meal.meal_times
      meal_times.include? lunch
    end
  end

  def create_meal 
    meal = Meal.new
    lunch = tags(:lunch)
    meal.meal_times << lunch
    dinner = tags(:dinner)
    meal.meal_times << dinner 
    meal.save
  end

  test "add meal to meal plan" do 
    add_meal_to_meal_plan
  end

  def add_meal_to_meal_plan
    meal = meals(:one)
    meal_plan = meal_plans(:one)
    meal.meal_plans << meal_plan
    meal.save
  end

  test "get meals from meal_plan" do 
    add_meal_to_meal_plan
    meal_plan = meal_plans(:one)
    meals = meal_plan.meals
    assert meals.size == 1
  end

  test "get meal_plans for meal" do 
    add_meal_to_meal_plan
    meal = meals(:one)
    meal_plans = meal.meal_plans
    assert meal_plans.size == 1
  end

  test "update meal_times for meal" do
    meal = meals(:one)
    meal.update_meal_times(tags(:dinner).name => "1")
    assert meal.meal_times.include?(tags(:dinner)), "should have meal_time dinner"
    meal.update_meal_times(tags(:lunch).name => "1")
    assert meal.meal_times.include?(tags(:lunch)), "should have meal_time lunch"
    meal.update_meal_times({})
    meal.update_meal_times({"lunch"=>"1", "dinner"=>"1"})
  end

end
