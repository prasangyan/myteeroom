class Emails < ActiveRecord::Migration
  def up
	 create_table :emails do |t|
			t.string  :email_address
			t.timestamps
	 end

	 create_table :friend_email_addresses do |t|
		 t.string  :friend_email_addresses
		 t.timestamps
	end
  end

  def down
	 drop_table :emails
	 drop_table :friend_email_addresses
  end
end
