class Event < ApplicationRecord
	has_many :registrations, :dependent => :destroy
	has_many :likes, dependent: :destroy
	has_many :likers, through: :likes, source: :user
		
	validates :name, presence:true
	validates :description, length: { minimum: 25 }
	validates :location, presence:true
	validates :price, numericality: { greater_then_or_equal_to: 0 }

	def free?
		price.blank? || price.zero?
	end
end
