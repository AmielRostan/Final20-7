class CreateClothingTransmissionJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :clothings, :transmissions do |t|
      # t.index [:clothing_id, :transmission_id]
      # t.index [:transmission_id, :clothing_id]
    end
  end
end
