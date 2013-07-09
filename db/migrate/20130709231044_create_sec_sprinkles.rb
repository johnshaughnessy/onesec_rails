class CreateSecSprinkles < ActiveRecord::Migration
  def change
    create_table :sec_sprinkles do |t|
      t.string :tag

      t.timestamps
    end
  end
end
