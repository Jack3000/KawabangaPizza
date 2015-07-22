class PizzaPic < ActiveRecord::Base
	belongs_to :pizza
	mount_uploader :image, ImageUploader
	default_scope {order(:pic_num)}
end
