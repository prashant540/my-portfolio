class Skill < ApplicationRecord
	 include PlaceHolder
	validates_presence_of :title, :percent_utilized

	after_initialize :set_defaults


	def set_defaults
		self.badge ||= PlaceHolder.image_generator(250,250)
	end
end
