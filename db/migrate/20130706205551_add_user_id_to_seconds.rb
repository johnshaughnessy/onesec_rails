class AddUserIdToSeconds < ActiveRecord::Migration
  def change
    add_column :seconds, :user_id, :integer
  end
end
