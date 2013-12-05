# home_controller.rb
class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		user_id = params[:id]
		@user = User.find_by_id(user_id)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to root_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		redirect_to root_path
	end


	def user_params
	  params.require(:user).permit(:name, :goal, :picture_url)
	end

end

