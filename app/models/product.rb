class Product < ActiveRecord::Base
 has_many :line_items
 before_destroy :ensure_not_referenced_by_any_line_item
 validates :title, :description, :presence => true
 validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
 validates :title, :uniqueness => true
 #validates :image_url, :format => {
# 	:with => %r{\.(gif|jpg|png)$}i,
# 	:message => 'must be a URL for GIF, JPG or PNG image.'
# }
 before_save :set_image_id
 def uploaded_file=(incoming_file)
    self.file_name = incoming_file.original_filename
    self.content_type = incoming_file.content_type
    self.image = incoming_file.read
 end

  private
 	# enuures that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
	  if line_items.empty?
  	 return true
	  else
  	 errors.add(:base, 'Line items present')
	   return false
	  end
  end

  def set_image_id
    val = Time.current.to_s.gsub(" ","")
    val = val.to_s.gsub(":","").gsub("-","").gsub("C","").gsub("T","").gsub("U","")
    val = val.reverse
    self.image_id = val
  end


end
