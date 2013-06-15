class CreateImagesTable < ActiveRecord::Migration
  def change
  	create_table :images do |t|
      t.integer :product_id
      t.string :image
      t.string :description

      t.timestamps
    end

    add_index :images, :product_id
  end
end
