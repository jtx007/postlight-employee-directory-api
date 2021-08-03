class Employee < ApplicationRecord
    belongs_to :location
    belongs_to :title
    belongs_to :department
    validates :name, presence: true
    validates :avatar, presence: true
    validates :email, presence: true, uniqueness: true
end
