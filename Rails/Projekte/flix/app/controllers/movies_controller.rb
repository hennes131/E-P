class MoviesController < ApplicationController
	def index
		@movies = %w(Ironman Superman Spider-Man)
	end
end
