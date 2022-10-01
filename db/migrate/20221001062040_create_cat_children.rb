class CreateCatChildren < ActiveRecord::Migration[6.1]
  def change
    create_table :cat_children do |t|
      t.string :name
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
