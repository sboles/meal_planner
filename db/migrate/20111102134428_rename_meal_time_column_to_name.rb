class RenameMealTimeColumnToName < ActiveRecord::Migration
  def change
    rename_column :tags, :meal_time, :name
  end
end
