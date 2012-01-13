class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :title
      t.text    :description
      t.string  :image_url
      t.decimal :price
      t.binary  :image
      t.string  "file_name"
      t.string  :content_type
      t.integer :length
      t.string  :image_id
      t.timestamps
    end
  end
end
