class Tag < ActiveRecord::Base
  belongs_to :tag_type
  has_many :meal_time_tags
  has_many :meals, through: :meal_time_tags
end
