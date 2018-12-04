class Manager < ApplicationRecord
    has_one :user, dependent: :destroy

    accepts_nested_attributes_for :user, allow_destroy: true
end
