class EmailReference < ActiveRecord::Migration
  def up
     create_table :email_references do |t|
      t.string :email_address
      t.integer :email_id
      t.timestamps
    end
  end

  def down
    drop_table :email_references
  end
end
