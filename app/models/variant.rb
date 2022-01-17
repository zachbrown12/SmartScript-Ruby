class Variant < ApplicationRecord
    has_many :user_variants
    has_many :users, through: :user_variants
    has_many :effects
    has_many :chemicals, through: :effects
    accepts_nested_attributes_for :effects
end
