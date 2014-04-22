class LessonsController < ApplicationController

	def landing
		@lessons = Lesson.all
		@lesson = @lessons.first
	end

	def index
		@lessons = Lesson.all
		@lesson = Lesson.new
	end

	def show
		@lesson = Lesson.find(params[:id])
	end

	def new
		@lesson = Lesson.new
	end

	def create
		@lessons = Lesson.all
		@lesson = Lesson.new(lessons_params)
		if @lesson.save
			render('lessons/index.html.erb')
		else
			render('lessons/new.html.erb')
		end
	end

	def edit
		@lesson = Lesson.find(params[:id])
		render('lessons/edit.html.erb')
	end

	def update
		@lesson = Lesson.find(params[:id])
		if @lesson.update(lessons_params)
			redirect_to lesson_path(@lesson)
		else
			render('lessons/edit.html.erb')
		end
	end
	

	def destroy
		@lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = 'Lesson deleted.'
    redirect_to lessons_path
	end

private
	def lessons_params
    params.require(:lesson).permit(:name,
                                 :number,
                                 :chapter_id,
                                 :content,
                                 :editable_code,
                                 :answer)
	end
end