class MakeChangesToQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :answer_choice_id
  end
end
