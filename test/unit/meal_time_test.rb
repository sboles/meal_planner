require 'test_helper'

class MealTimeTest < ActiveSupport::TestCase
  test "retrieve" do
    lunch_fixture = meal_times(:lunch)
    dinner_fixture = meal_times(:dinner)
    lunch = MealTime.where(meal_time:lunch_fixture.meal_time)
    dinner = MealTime.where(meal_time:dinner_fixture.meal_time)
  end
end
