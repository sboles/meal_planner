require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test "retrieve" do
    lunch_fixture = tags(:lunch)
    dinner_fixture = tags(:dinner)
    lunch = Tag.where(name:lunch_fixture.name)
    dinner = Tag.where(name:dinner_fixture.name)
  end

  test "add a tag type" do
    lunch = tags(:lunch)
    meal_times= tag_types(:meal_times)
    lunch.tag_type = meal_times
    lunch.save
  end
end
