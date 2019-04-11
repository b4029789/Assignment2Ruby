class Profile < ApplicationRecord
	belongs_to :user, :optional => true

	mount_uploader :userphoto, ImageUploader
end
