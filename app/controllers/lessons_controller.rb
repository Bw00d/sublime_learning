class LessonsController < ApplicationController

	def landing
		render :layout => "landing"
	end

	def index
		@lessons = Lesson.all
		@lesson = Lesson.new
		render('lessons/index.html.erb')
	end

	def show
		@lesson = Lesson.find(params[:id])
		render('lessons/show.html.erb')
	end

	def new
		@lesson = Lesson.new
		render('lessons/new.html.erb')
	end

	def create
		@lessons = Lesson.all
		@lesson = Lesson.new(lessons_params)
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
		if @lesson.update(lessons_params)
			redirect_to lessons_path
		else
			render('lessons/edit.html.erb')
		end
	end

private
	def lessons_params
    params.require(:lesson).permit(:name,
                                 :number,
                                 :chapter_id,
                                 :content)
	end
end