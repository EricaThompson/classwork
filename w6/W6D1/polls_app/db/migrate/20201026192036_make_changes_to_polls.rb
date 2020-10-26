class MakeChangesToPolls < ActiveRecord::Migration[5.2]
  def change
    remove_column :polls, :question_id
  end
end
