class User < ActiveRecord::Base
  before_validation :set_user_role, on: :create
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :trackable, :validatable,
  :omniauthable, omniauth_providers: [:google_oauth2]


  has_many :enrolls
  has_many :courses, through: :enrolls

  scope :instructors, -> { where(role: :instructor).order(:first_name) }

  mount_uploader :user_image, UserImageUploader

  
  def self.from_omniauth(auth)
   if user = User.find_by_email(auth.info.email)
     user.provider = auth.provider
     user.uid = auth.uid
     user
   else
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.provider = auth.provider
       user.uid = auth.uid
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
     end
   end
 end




  def has_role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end
  
  private
  def set_user_role
    self.role ||= 'pleb'
  end
end

