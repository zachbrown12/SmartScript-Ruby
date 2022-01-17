class Ingredient < ApplicationRecord
    belongs_to :drug
    belongs_to :chemical
    accepts_nested_attributes_for :drug
end
