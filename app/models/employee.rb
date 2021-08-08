class Employee < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_by_term, against: [:name, :email], associated_against: {
        location: [:state],
        department: [:name],
        title: [:jobtitle]

    }
    belongs_to :location
    belongs_to :title
    belongs_to :department
    validates :name, presence: true
    validates :avatar, presence: true
    validates :email, presence: true, uniqueness: true
end
