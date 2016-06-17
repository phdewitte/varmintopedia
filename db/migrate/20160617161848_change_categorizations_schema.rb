class ChangeCategorizationsSchema < ActiveRecord::Migration
  def change
    rename_column :categorizations, :article_id, :version_id
  end
end
