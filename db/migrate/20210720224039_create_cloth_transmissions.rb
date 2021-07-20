class CreateClothTransmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :cloth_transmissions do |t|
      t.references :cloth, null: false, foreign_key: true
      t.references :transmission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
