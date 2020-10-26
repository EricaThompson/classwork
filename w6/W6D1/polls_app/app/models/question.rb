# == Schema Information
#
# Table name: questions
#
#  id               :bigint           not null, primary key
#  question         :text
#  answer_choice_id :integer
#  poll_id          :integer
#
class Question < ApplicationRecord
    belongs_to :poll,
        foreign_key: :poll_id,
        class_name: :poll

    has_many :answer_choices,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice



end
