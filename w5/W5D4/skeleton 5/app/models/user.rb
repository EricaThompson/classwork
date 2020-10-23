# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :enrollments,
        class_name: :Enrollment,
        foreign_key: :student_id
    
    has_many :enrolled_courses,
        through: :enrollments, #same class
        source: :course #generally a belongs_to or has_many

    has_many :course,
        foreign_key: :instructor_id,
        class_name: :User
end
