class PizzaPic < ActiveRecord::Base
	belongs_to :pizza
	mount_uploader :image, ImageUploader
end
