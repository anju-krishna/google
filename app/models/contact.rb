class Contact < ActiveRecord::Base

	validates :name, :address, :email, :comments, presence:true	 
end
