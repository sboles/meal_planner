require 'test_helper'

class MealPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #

  test "fill with meals" do
    meal_plan = meal_plans(:one)
    meal_plan.fill_meal_plan
    assert meal_plan.meals.size == 14, "#{meal_plan.meals.size}"
  end
end
