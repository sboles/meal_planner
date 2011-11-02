class CreateMealTimeTags < ActiveRecord::Migration
  def change
    create_table :meal_time_tags do |t|
      t.integer :meal_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
