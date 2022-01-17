class User < ApplicationRecord
    has_many :prescriptions
    has_many :users, through: :prescriptions
    has_many :user_variants
    has_many :variants, through: :user_variants
    has_many :effects, through: :variants
    has_many :drugs, through: :prescriptions
    has_many :chemicals, through: :effects
    has_many :ingredients, through: :drugs
    accepts_nested_attributes_for :prescriptions
    accepts_nested_attributes_for :user_variants
end
