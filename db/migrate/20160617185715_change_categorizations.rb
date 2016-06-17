class ChangeCategorizations < ActiveRecord::Migration
  def change
    rename_column :categorizations, :article, :version
  end
end
