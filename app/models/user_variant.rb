class UserVariant < ApplicationRecord
    belongs_to :user
    belongs_to :variant
    belongs_to :user_row
    accepts_nested_attributes_for :variant
end
