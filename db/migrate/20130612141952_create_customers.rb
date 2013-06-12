class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :fb
      t.string :gplus
      t.string :linked
      t.string :twit

      t.timestamps
    end
  end
end
