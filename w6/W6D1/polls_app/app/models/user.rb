# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  username    :string
#  poll_id     :integer
#  response_id :integer
#
class User < ApplicationRecord
    has_many :authored_polls, #! through?
        foreign_key: :poll_id,
        class_name: :Poll

    has_many :responses,
        foreign_key: :response_id,
        class_name: :Response

    has_many :polls,
        foreign_key: :poll_id,
        class_name: :Poll
end
