class Drug < ApplicationRecord
    has_many :ingredients
    has_many :chemicals, through: :ingredients
    has_many :prescriptions
    has_many :users, through: :prescriptions
    has_many :effects, through: :chemicals
end
