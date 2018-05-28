class Portfolio < ApplicationRecord
	has_many :technologies
	include PlaceHolder
	validates_presence_of :title,:body,:main_image,:thumb_image

	scope :ruby_on_rails_items, -> {where(subtitle: 'Ruby on Rails')}
	scope :react_items, -> {where(subtitle: 'React')}

	after_initialize :set_defaults


	def set_defaults
		self.main_image ||= PlaceHolder.image_generator(600,400)
		self.thumb_image ||= PlaceHolder.image_generator(350,200)
	end
end
