class AddPrice < ActiveRecord::Migration
  def up
	  add_column :items, :price, :integer
	 	remove_column :items, :name
	 	remove_column :items, :description
  end

  def down
	 	remove_column :items, :price
	 	add_column :items, :name, :string
		add_column :items, :description, :text
  end
end
