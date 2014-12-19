class Course < ActiveRecord::Base

  has_many :enrolls
  has_many :users, through: :enrolls

  has_many :bookings
  has_many :classrooms, through: :bookings

  has_many :instructs
  has_many :users, through: :instructs

end
