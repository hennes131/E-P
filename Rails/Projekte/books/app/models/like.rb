class Like < ApplicationRecord
	belongs_to :book
	HOW_HEARD_OPTIONS = [
  			1,
  			2,
  			3,
  			4,
  			5
  	]
		validates :quality, inclusion: { in: HOW_HEARD_OPTIONS }
end
