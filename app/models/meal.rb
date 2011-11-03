class Meal < ActiveRecord::Base
  has_many :meal_time_tags
  has_many :meal_times, through: :meal_time_tags, source: :tag 

  def update_meal_times(submitted_meal_times)
    existing_meal_times = meal_times
    TagType.find_by_name("meal_times").tags.each do |tag|
      exists = !existing_meal_times.nil? && existing_meal_times.include?(tag) 
      submitted = !submitted_meal_times.nil? && submitted_meal_times.keys.include?(tag.name)
      add = submitted && !exists
      remove = !submitted && exists 
      if (add)
        meal_times << tag
        save
      end
      if (remove)
        MealTimeTag.delete(meal_time_tags.where(tag_id:tag.id))
      end
    end
  end

end
