class Carrier < ActiveRecord::Base
	mount_uploader :resume, ResumeUploader
		mount_uploader :photo, PhotoUploader
	validates :first_name, :last_name, :city, :country, :email_address, :resume,:photo, presence:true
	validates :phone_number, numericality: true,
                    length: { is: 10 }

end
