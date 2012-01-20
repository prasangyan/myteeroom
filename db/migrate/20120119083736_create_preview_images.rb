class CreatePreviewImages < ActiveRecord::Migration
  def up
	 add_column :tinies, :tinyPreview, :string
  end

  def down
	 remove_column :tinies, :tinyPreview, :string
  end
end
