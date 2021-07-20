class CreateCloths < ActiveRecord::Migration[6.1]
  def change
    create_table :cloths do |t|
      t.string :name
      t.string :color
      t.string :description
      t.references :clothing_type, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
