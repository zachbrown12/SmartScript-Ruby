class Chemical < ApplicationRecord
    has_many :ingredients
    has_many :drugs, through: :ingredients
    has_many :effects
    has_many :variants, through: :effects
    accepts_nested_attributes_for :ingredients
end
