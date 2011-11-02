class MealTimeTag < ActiveRecord::Base
  belongs_to :meal
  belongs_to :tag
end
