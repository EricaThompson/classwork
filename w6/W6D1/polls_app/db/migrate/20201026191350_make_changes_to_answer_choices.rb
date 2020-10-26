class MakeChangesToAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    remove_column :answer_choices, :response_id
    remove_column :answer_choices, :user_id
  end
end
