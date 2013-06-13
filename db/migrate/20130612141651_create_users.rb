class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :fb
      t.string :gplus
      t.string :linked
      t.string :twit
      t.date :birth_date
      t.string :nationality
      t.string :passport
      t.string :ss
      t.string :address
      t.string :photo

      t.timestamps
    end
  end
end
