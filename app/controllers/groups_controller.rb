class GroupsController < ApplicationController
	# GET /groups
	def index
		@groups = Group.all
		render json: @groups
	end

	#POST /groups
	def create
		@group = Group.new(group_params)

	    if @group.save
			render json: @group, status: :created, location: @group
	    else
			render json: @group.errors, status: :unprocessable_entity
	    end
	end

	private
	    def group_params
			params.require(:group).permit(:name)
	    end
end
