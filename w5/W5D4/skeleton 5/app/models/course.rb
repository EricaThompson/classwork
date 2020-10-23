# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  instructor_id :integer
#  prereq_id     :integer
#
class Course < ApplicationRecord

    belongs_to :prereq,
        foreign_key: :prereq_id,
        class_name: :Course,
        optional: true
    #has many with primary key, user perspective
    
    belongs_to :instructor,
        foreign_key: :instructor_id,
        class_name: :User

    has_many :enrollments

    has_many :enrolled_students,
        through: :enrollments,
        source: :user

    has_one :prereq,
        foreign_key: :prereq_id,
        class_name: :Course
    
    
end
