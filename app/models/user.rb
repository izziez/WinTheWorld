class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# mount_uploader :image, ImageUploader

	has_and_belongs_to_many :challenges

	validates :name, presence: true, length: { minimum: 2}
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 6 }
end
