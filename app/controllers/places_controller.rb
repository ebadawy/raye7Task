class PlacesController < ApplicationController
	# GET /places
	def index
		@places = Place.all
		render json: @places
	end

	#POST /places
	def create
		@place = Place.new(place_params)

	    if @place.save
			render json: @place, status: :created, location: @place
	    else
			render json: @place.errors, status: :unprocessable_entity
	    end
	end

	private
	    def place_params
			params.require(:place).permit(:name, :longitude, :latitude)
	    end
end
