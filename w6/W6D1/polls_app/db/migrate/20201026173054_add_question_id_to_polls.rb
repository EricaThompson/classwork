class AddQuestionIdToPolls < ActiveRecord::Migration[5.2]
  def change
    add_column :polls, :question_id, :integer
  end
end
