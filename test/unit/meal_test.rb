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
end
