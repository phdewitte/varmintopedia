class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :category, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
