class FavoritsController < ApplicationController
	def create
		@movie = Movie.find(params[:movie_id])
		@movie.favorits.create(user_id: current_user.id)
		redirect_to @movie, notice: "Film zu Favoriten hinzugefügt"
	end
	def destroy
		@Favorit = Favorit.find(params[:id])
		@Favorit.delete
		redirect_to movie_path(params[:movie_id]), alert: "Film gefällt dir wohl nicht mehr"
	end
end
