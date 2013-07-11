class AddTitleToCakes < ActiveRecord::Migration
  def change
    add_column :cakes, :title, :string
  end
end
