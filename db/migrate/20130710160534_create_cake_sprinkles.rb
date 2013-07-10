class CreateCakeSprinkles < ActiveRecord::Migration
  def change
    create_table :cake_sprinkles do |t|
      t.string :tag
      t.integer :cake_id

      t.timestamps
    end
  end
end
