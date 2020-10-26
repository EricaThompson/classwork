# == Schema Information
#
# Table name: polls
#
#  id    :bigint           not null, primary key
#  title :string
#
class Poll < ApplicationRecord
    belongs_to :users,
        foreign_key: :id,
        class_name: :User

    belongs_to :author,
        foreign_key: :id,
        class_name: :User

    has_many :questions,
        foreign_key: :id,
        class_name: :Question
end
