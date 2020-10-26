class AddPollIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :poll_id, :integer
  end
end
