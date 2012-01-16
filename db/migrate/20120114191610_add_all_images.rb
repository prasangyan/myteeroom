class AddAllImages < ActiveRecord::Migration
  def up
	  add_column :products, :homePreview, :string
	 	add_column :products, :smallPreview, :string
	 	add_column :products, :tinyPreview, :string
	 	add_column :products, :largePreview, :string
  end

  def down
	 	remove_column :products, :homePreview, :string
	 	remove_column :products, :smallPreview, :string
	 	remove_column :products, :tinyPreview, :string
	 	remove_column :products, :largePreview, :string
  end
end
