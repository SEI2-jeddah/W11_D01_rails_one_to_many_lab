class Course < ApplicationRecord
    has_many :students, dependent: :destroy

    validates :course_name, presence: true
    validates :course_code, presence: true, length: { minimum: 3 }
end
