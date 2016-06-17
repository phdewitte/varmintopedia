class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :category, index: true
      t.references :version, index: true

      t.timestamps null: false
    end
  end
end
