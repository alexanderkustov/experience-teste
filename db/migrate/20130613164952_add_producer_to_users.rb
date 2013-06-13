class AddProducerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :producer, :boolean, default: false
  end
end
