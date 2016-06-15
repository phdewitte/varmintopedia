class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.body :title
      t.text :body
      t.references :editor, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
