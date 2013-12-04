# home_controller.rb
class PagesController < ApplicationController

	def home
		@users = User.all
		@user1 = User.find(1)
		@user2 = User.find(2)
		@user3 = User.find(3)
		@user4 = User.find(4)
	end


end