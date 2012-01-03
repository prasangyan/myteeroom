class CreateTeeCreators < ActiveRecord::Migration
  def change
    create_table :tee_creators do |t|
      t.column :firstName, :string
      t.column :lastName, :string
      t.timestamps
    end
  end
end
