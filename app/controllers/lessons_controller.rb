class LessonsController < ApplicationController

	def welcome

	end

	def index
		@lessons = Lesson.all
		render('lessons/index.html.erb')
	end

	def show
		@lesson = Lesson.find(params[:id])
		render('lessons/show.html.erb')
	end

	def admin
		@lesson = nil
		render('lessons/admin.html.erb')
	end

	def edit_index
		@lesson = nil
		@lessons = Lesson.all
		render('lessons/edit_lesson.html.erb')
	end

	def new
		@lesson = Lesson.new
		render('lessons/new.html.erb')
	end

	def create
		@lessons = Lesson.all
		@lesson = Lesson.new(name: params[:name], 
												 number: params[:number], 
												 content: params[:content],
												 chapter_id: params[:chapter_id])
		if @lesson.save
			render('lessons/index.html.erb')
		else
			render('lessons/admin.html.erb')
		end
	end

	def edit
		@lesson = Lesson.find(params[:id])
		render('lessons/edit.html.erb')
	end

	def update
		@lesson = Lesson.find(params[:id])
		if @lesson.update(name: params[:name], 
												 number: params[:number], 
												 content: params[:content],
												 chapter_id: params{:chapter_id})
			redirect_to('table-of-contents')
		else
			render('lessons/edit.html.erb')
		end
	end
end