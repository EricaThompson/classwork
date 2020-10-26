class AddUserIdToAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :answer_choices, :user_id, :integer
  end
end
