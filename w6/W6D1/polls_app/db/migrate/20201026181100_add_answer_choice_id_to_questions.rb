class AddAnswerChoiceIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :answer_choice_id, :integer
  end
end
