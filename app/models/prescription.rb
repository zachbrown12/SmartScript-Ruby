class Prescription < ApplicationRecord
    belongs_to :drug
    belongs_to :user
end
