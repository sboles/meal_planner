require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test "retrieve" do
    lunch_fixture = tags(:lunch)
    dinner_fixture = tags(:dinner)
    lunch = Tag.where(name:lunch_fixture.name)
    dinner = Tag.where(name:dinner_fixture.name)
  end
end
