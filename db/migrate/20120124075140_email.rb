class Email < ActiveRecord::Migration
  def up
     create_table :emails do |t|
      t.string :email
      t.timestamps
    end
  end

  def down
    drop_table :emails
  end
end
