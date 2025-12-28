class Car < ApplicationRecord
    belongs_to :brand
    accepts_nested_attributes_for :brand
end
