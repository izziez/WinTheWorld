class Challenge < ActiveRecord::Base
	def list=(value)
  		list_to_input = "{" + value + "}"
  		self[:list] = list_to_input
	end

	has_and_belongs_to_many :users
	# mount_uploader :image, ImageUploader
end