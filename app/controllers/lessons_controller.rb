class LessonsController < ApplicationController

	def landing
		@lessons = Lesson.all
		@lesson = @lessons.first
	end

	def no_lesson
		render('lessons/no_lesson.html.erb')
	end

	def index
		@lessons = Lesson.all
		@lesson = Lesson.new
	end

	def show
		@lesson = Lesson.find(params[:id])
		if @lesson.next == nil
			# render('lessons/no_lesson.html.erb')
			redirect_to lessons_thats_all_path
		else
			@lesson
		end
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
                                 :answer,
                                 :content2,
                                 :editable_code2,
                                 :answer2,
                                 :editor_height,
                                 :editor_height2,
                                 :line_number,
                                 :line_number2)
	end
end