# == Schema Information
#
# Table name: questions
#
#  id       :bigint           not null, primary key
#  question :text
#
class Question < ApplicationRecord
    belongs_to :poll,
        foreign_key: :id,
        class_name: :poll

    has_many :answer_choices,
        foreign_key: :id,
        class_name: :AnswerChoice



end
