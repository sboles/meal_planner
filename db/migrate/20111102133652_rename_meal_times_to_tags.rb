class RenameMealTimesToTags < ActiveRecord::Migration

  def change
    rename_table :meal_times, :tags
  end 

end
