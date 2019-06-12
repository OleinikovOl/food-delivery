class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :section
      t.belongs_to :kitchen
      t.string :comment
      t.integer :price
      t.integer :order
      t.text :features, array: true, default: []
      t.integer :weight
      t.string :thumb_image
      t.timestamps
    end
  end
end
