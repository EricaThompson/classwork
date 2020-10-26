# == Schema Information
#
# Table name: polls
#
#  id          :bigint           not null, primary key
#  title       :string
#  question_id :integer
#  user_id     :integer
#
class Poll < ApplicationRecord
    belongs_to :users,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :author,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :questions,
        foreign_key: :question_id,
        class_name: :Question
end
