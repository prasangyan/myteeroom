class Item < ActiveRecord::Base
  validates :title, :presence => true

 	has_attached_file :thumbnail
 	has_attached_file :large_preview
end
