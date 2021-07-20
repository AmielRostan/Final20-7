class Cloth < ApplicationRecord
  belongs_to :clothing_type
  belongs_to :brand

  paginates_per 10
end
