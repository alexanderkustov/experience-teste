class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :producer_id
      t.string :dt
      t.string :desc
      t.integer :users
      t.string :benefits
      t.string :estimated_rsp
      t.string :l_price
      t.string :benefits_clients
      t.string :photos
      t.string :videos
      t.string :sr2l
      t.string :refp_number
      t.string :fixed_costs
      t.string :gross_margin
      t.string :bp_link
      t.string :pp_link

      t.timestamps
    end
  end
end
