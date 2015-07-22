class Pizza < ActiveRecord::Base
	has_many :pizza_pics, dependent: :destroy
	accepts_nested_attributes_for :pizza_pics
end
