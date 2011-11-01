require 'test_helper'

class MealPlanMealTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end

  test "test load" do
    mpm = MealPlanMeal.where(custom_description:meal_plan_meals(:one).custom_description)
    assert_not_nil mpm
  end
  
  test "fixtures are loaded" do
    assert_not_nil meal_plan_meals
    assert_not_nil meals
  end

  test "adding a meal" do
    mpm = MealPlanMeal.new
    mpm.meal = meals(:one)
    mpm.save 
  end

end
