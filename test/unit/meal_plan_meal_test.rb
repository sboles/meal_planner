require 'test_helper'

class MealPlanMealTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "has one meal" do
    mpm = MealPlanMeal.where(custom_description:"Test")
    assert_not_nil mpm
  end
end
