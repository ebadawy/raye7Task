class UsersController < ApplicationController
  #POST /users
  def create
  	@user = User.new(user_params)

    if @user.save
    	render json: @user, status: :created, location: @user
    else
    	render json: @user.errors, status: :unprocessable_entity
    end
  end
end

	private
	    def user_params
			params.require(:user).permit(:fname, :fname, :lname, :phone_number, :home_place_id, :work_place_id)
	    end
end
