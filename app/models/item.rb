class Item < ActiveRecord::Base
  has_attached_file :picture,
  styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
  :content_type => /\Aimage\/.*\Z/

end
