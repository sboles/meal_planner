class RenameTagTypeToName < ActiveRecord::Migration
  def change
    rename_column :tag_types, :tag_type, :name
  end
end
