class Location < ApplicationRecord
    has_many :employees
    validates :state, presence: true, uniqueness: true

end
