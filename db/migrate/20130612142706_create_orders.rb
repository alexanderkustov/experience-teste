class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :telephone
      t.integer :qty
      t.timestamp :date
      t.string :l_price

      t.timestamps
    end
  end
end
