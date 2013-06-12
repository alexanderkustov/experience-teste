class AddPasswordToProducers < ActiveRecord::Migration
  def change
    add_column :producers, :password_digest, :string
  end
end
