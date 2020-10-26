class AddResponseIdToAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :answer_choices, :response_id, :integer
  end
end
