class MakeChangesToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :response_id
    remove_column :users, :poll_id
  end
end
