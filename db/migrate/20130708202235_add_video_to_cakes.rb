class AddVideoToCakes < ActiveRecord::Migration
  def change
  	add_column :cakes, :video, :string
  end
end
