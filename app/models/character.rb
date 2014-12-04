class Character < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  # has_many :attributes, -> { order('name ASC')}, :dependent => :destroy
  belongs_to :user 
  has_many :attribs
 
end