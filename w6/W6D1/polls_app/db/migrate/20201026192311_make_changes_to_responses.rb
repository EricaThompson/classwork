class MakeChangesToResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :response 
  end
end
