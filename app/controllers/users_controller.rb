class UsersController < ApplicationController
	before_filter :signed_in_user, 
                only: [:show, :index, :edit, :update, :destroy]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :author_user,  only: :destroy
 

	def new
		@lessons = Lesson.all
		@users = User.all
		@user = User.new
	end

	def create
		@lessons = Lesson.all
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			redirect_to lesson_path(@lessons.first)
		else
			redirect_to :back
		end
	end

	def index
		@users = User.all
		@lessons = Lesson.all
	end

	def show
		@user = User.find(params[:id])
		@lessons = Lesson.all
	end

	def edit
		@user = User.find(params[:id])
		@lessons = Lesson.all
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "User updated."
			redirect_to user_path(@user)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation, :author)
		end

		def signed_in_user
			redirect_to login_path, notice: "Please login." unless signed_in?
		end

		def correct_user
        @user = User.find(params[:id])
        redirect_to(root_path) unless current_user?(@user) || current_user.author?
    end

    def author_user
      redirect_to root_path unless current_user.author? 
    end
end