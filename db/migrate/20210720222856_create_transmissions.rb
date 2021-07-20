class CreateTransmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :transmissions do |t|
      t.date :date
      t.integer :program_number
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
