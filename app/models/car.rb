class Car < ApplicationRecord
    belongs_to :brand
    belongs_to :user
    accepts_nested_attributes_for :brand
end
