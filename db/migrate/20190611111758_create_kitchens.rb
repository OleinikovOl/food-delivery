class CreateKitchens < ActiveRecord::Migration[5.0]
  def change
    create_table :kitchens do |t|
      t.string :name
      t.string :comment
      t.float :lat
      t.float :lon
      t.string :start_time
      t.string :close_time
      t.integer :order
      t.boolean :default
      t.string :adress
      t.timestamps
    end
  end
end
