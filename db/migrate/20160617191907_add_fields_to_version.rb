class AddFieldsToVersion < ActiveRecord::Migration
  def change
    add_column :versions, :published, :boolean, default: false
    add_column :versions, :has_bibliography, :boolean, default: false
  end
end
