class AddSecondIdToSprinkle < ActiveRecord::Migration
  def change
    add_column :sec_sprinkles, :second_id, :integer
  end
end
