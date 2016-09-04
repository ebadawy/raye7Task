class TripsController < ApplicationController
	before_action :set_trip, only: [:join, :leave]

	# GET /trips?user_id=X
	def index
		@trip = Trip.where(driver: params[:user_id])
		render json: @trip
	end

	#POST /trips
	def create
		@trip = Trip.new(trip_params)

	    if @trip.save
			render json: @trip, status: :created, location: @trip
	    else
			render json: @trip.errors, status: :unprocessable_entity
	    end
	end

	#POST /trips/:id/join
	def join
		@user = User.find(params[:user_id])
		if @trip.can_join? @user
			@trip.join @user
			render json: @trip, status: :ok, location: @trip
		else
			render json: status: :unprocessable_entity
		end	

	private

		def set_trip
			@trip = Trip.find(params[:id])
		end

	    def trip_params
			params.require(:trip).permit(:driver_id, :source_id, :destination_id, :time, :seats)
	    end
end
