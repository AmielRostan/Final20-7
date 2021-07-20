class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :sex
      t.date :birth_date

      t.timestamps
    end
  end
end
