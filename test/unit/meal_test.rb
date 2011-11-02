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
    meals = lunch.meals
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

end
