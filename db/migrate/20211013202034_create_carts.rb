class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.string :name
      t.float :cost
      t.float :quantity

      t.timestamps
    end
  end
end
