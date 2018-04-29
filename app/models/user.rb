class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#------Validations
# validates_presence_of :first_name, :last_name, :mobile_number
# validates_presence_of :first_name, message: 'is requried'
	validates :first_name, presence: { message: "is required." }
	validates :last_name, presence: { message: "is required." }


 has_attached_file :avatar, styles: {thumb: '100x100#', medium: '300x300#'}

 validates_attachment_content_type :avatar, content_type: ['image/jpg', 'image/jpeg', 'image/png']

end
