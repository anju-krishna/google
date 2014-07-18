class Carrier < ActiveRecord::Base
	mount_uploader :resume, ResumeUploader
		mount_uploader :photo, PhotoUploader
	validates :first_name, :last_name, :city, :country, :email_address, :phone_number, :resume,:photo, presence:true
end
