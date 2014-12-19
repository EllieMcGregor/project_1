class Campus < ActiveRecord::Base
  has_many :classrooms

 mount_uploader :campus_image, CampusImageUploader

end
