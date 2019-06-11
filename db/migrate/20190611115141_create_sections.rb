class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :comment
      t.belongs_to :kitchen, index: true
      t.integer :order
      t.timestamps
    end
  end
end
