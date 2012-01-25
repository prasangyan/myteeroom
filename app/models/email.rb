class Email < ActiveRecord::Base
  has_many :email_references
  validates :email, :presence => true , :uniqueness => true
end