class Portfolio < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader

	validates :name, :description, presence:true
end
