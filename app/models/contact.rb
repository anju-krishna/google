class Contact < ActiveRecord::Base

	validates :name, :address, :email, :comments, presence:true
	before_create do
    	self.name =address.capitalize if name.blank?
  	end
 
	 
end
