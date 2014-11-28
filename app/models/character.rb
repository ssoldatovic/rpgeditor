class Character < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  has_many :attributes
  belongs_to :user 
end
