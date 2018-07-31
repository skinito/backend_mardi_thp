class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new
		@user.username = params[:user]
		@user.email = params[:email]
		@user.bio = params[:bio]
		@user.save
		#user = User.create(params.require(:user).permit(:username, :email, :bio))
	end
end
