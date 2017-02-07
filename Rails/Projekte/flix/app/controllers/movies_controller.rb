class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:index]
	before_action :require_admin, :except => [:index, :show]
	def index
		@movies=Movie.all
	end
	def show
		@favoriters = @movie.favoriters
	end
	def new
		@movie = Movie.new
	end
	def create
		@movie = Movie.create(movie_params)
		if @event.save 
			redirect_to movies_path
		else
			render :new 
		end
	end
	def edit
		
	end
	def update
		
		@movie.update(movie_params)	
		redirect_to movies_path	
	end
	def destroy
		@movie.destroy
		redirect_to movies_path
	end
	
	private 
		def set_movie
			@movie = Movie.find(params[:id])
		end
		def movie_params
			permitted_params = params.require(:movie).permit(:title, :rating, :total_gross, :description, :released_on)
		end
end