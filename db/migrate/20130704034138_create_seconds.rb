class CreateSeconds < ActiveRecord::Migration
  def change
    create_table :seconds do |t|
      t.string :date
      t.string :uid

      t.timestamps
    end
  end
end
