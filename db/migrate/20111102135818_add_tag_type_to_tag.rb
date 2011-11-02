class AddTagTypeToTag < ActiveRecord::Migration
  def change
    change_table :tags do |t|
      t.integer :tag_type_id
    end
  end
end
