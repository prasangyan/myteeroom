class CreateTinies < ActiveRecord::Migration
  def change
    create_table :tinies do |t|
      t.string :small_image_url
      t.string :large_image_url
      t.integer :product_id
      t.timestamps
    end
  end
end
