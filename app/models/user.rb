class User < ActiveRecord::Base
  before_validation :set_user_role, on: :create
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  has_many :enrolls
  has_many :courses, through: :enrolls

  scope :instructors, -> { where(role: :instructor).order(:first_name) }

  mount_uploader :user_image, UserImageUploader

  def has_role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  private
  def set_user_role
    self.role ||= 'pleb'
  end
end

