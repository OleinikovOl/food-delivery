class Kitchen < ApplicationRecord
    has_many :sections
    has_many :items
end
