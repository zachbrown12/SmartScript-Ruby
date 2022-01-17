class Effect < ApplicationRecord
    belongs_to :variant
    belongs_to :chemical
    accepts_nested_attributes_for :chemical
end
