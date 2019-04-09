class Product < ApplicationRecord
	has_many :reviews

	mount_uploader :photo, ImageUploader

	validates:name, presence: true

end
