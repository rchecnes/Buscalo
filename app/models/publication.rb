class Publication < ActiveRecord::Base

	mount_uploader :image, ImageUploader

 belongs_to :district
 belongs_to :province
 belongs_to :department
 belongs_to :country

end
