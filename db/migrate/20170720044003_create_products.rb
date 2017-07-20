class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :picture
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
