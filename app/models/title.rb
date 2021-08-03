class Title < ApplicationRecord
    has_many :employees
    validates :jobtitle, presence: true, uniqueness: true
end
