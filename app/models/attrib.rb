class Attrib < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :character 
end
