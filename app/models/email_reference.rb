class EmailReference < ActiveRecord::Base
  belongs_to :email
  validates :email_address, :presence => true
end
