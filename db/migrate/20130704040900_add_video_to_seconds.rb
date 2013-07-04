class AddVideoToSeconds < ActiveRecord::Migration
  def change
    add_column :seconds, :video, :string
  end
end
