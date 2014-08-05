class Slider < ActiveRecord::Base
  belongs_to :user
  mount_uploader :images, ImagesUploader
  validates :name, :description, :slide, presence:true
   
end
