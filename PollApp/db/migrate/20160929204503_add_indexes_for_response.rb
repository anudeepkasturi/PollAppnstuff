class AddIndexesForResponse < ActiveRecord::Migration
  def change
    remove_column :responses, :answer_id, :integer
    remove_column :responses, :user_id, :integer
    add_column :responses, :answer_id, :integer, null: false
    add_column :responses, :user_id, :integer, null: false

    add_index :responses, :answer_id
    add_index :responses, :user_id
  end
end
