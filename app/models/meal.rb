class Meal < ActiveRecord::Base
  has_many :meal_time_tags
  has_many :meal_times, through: :meal_time_tags, source: :tag 
end
