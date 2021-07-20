class Transmission < ApplicationRecord
  belongs_to :person
  has_many :cloths, :througth => :cloth_transmissions

end
