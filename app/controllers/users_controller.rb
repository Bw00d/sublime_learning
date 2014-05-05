class UsersController < ApplicationController

	def new
		# @user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to lessons_path, notice: "You have created a new user"
		else
			redirect_to :back
		end
	end


	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :author)
		end
end