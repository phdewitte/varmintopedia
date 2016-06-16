class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :title
      t.text :body
      t.boolean :published, default: false
      t.boolean :has_bibliography, default: false

      t.references :editor, index: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
