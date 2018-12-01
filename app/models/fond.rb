class Fond < ApplicationRecord
  has_and_belongs_to_many :sectors
  has_many :stages
end
