class Product < ActiveRecord::Base
 has_many :tiny
 has_many :email
 before_destroy :ensure_not_referenced_by_any_line_item
 validates :title, :description, :presence => true
 validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
 validates :title, :uniqueness => true

end
