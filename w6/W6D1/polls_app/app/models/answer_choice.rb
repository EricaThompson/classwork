# == Schema Information
#
# Table name: answer_choices
#
#  id     :bigint           not null, primary key
#  answer :text
#
class AnswerChoice < ApplicationRecord
    belongs_to :question,
        foreign_key: :id,
        class_name: :question

    has_many :responses,
        foreign_key: :id,
        class_name: :Response
end
