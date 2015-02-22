class Publication < ActiveRecord::Base

	mount_uploader :image, ImageUploader
end
