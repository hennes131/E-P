class LikesController < ApplicationController
	def create
		@event = Event.find(params[:event_id])
		@event.likes.create(user_id: current_user.id)
		redirect_to @event, notice: "Event wurde geliked"
	end
	def destroy
		@Like = Like.find(params[:id])
		@Like.delete
		redirect_to event_path(params[:event_id]), alert: "Event wurde disliked"
	end
end
