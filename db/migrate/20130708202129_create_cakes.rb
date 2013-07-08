class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.string :uid

      t.timestamps
    end
  end
end
