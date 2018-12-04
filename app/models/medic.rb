class Medic < ApplicationRecord
    has_one :user, dependent: :destroy
end
