# == Schema Information
#
# Table name: responses
#
#  id       :bigint           not null, primary key
#  response :text
#
class Response < ApplicationRecord
    belongs_to :users,
        foreign_key: :id,
        class_name: :User

    belongs_to :answer_choice,
        foreign_key: :id,
        class_name: :AnswerChoice
end
