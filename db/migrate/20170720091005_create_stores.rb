class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :stores, [:user_id, :created_at]
  end
end
