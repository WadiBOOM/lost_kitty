class Pet < ApplicationRecord
  SPECIES = %w(dog cat horse bird)

  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}
end
