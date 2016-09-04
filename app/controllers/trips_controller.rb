class TripsController < ApplicationController
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

	private
	    def trip_params
			params.require(:trip).permit(:driver_id, :source_id, :destination_id, :time, :seats)
	    end
end
