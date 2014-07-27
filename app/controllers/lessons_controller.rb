class LessonsController < ApplicationController

  before_filter :author_user,  only: [:create, :edit, :destroy]

	def landing
		@lessons = Lesson.all
		@lesson = @lessons.first
	end

	def no_lesson
		@lessons = Lesson.all
		render('lessons/no_lesson.html.erb')
	end

	def index
		@lessons = Lesson.all
		@lesson = Lesson.new
	end

	def show
		@lessons = Lesson.all
		@lesson = Lesson.find(params[:id])
	end

	def create
		@lesson = Lesson.new(lessons_params)
		if @lesson.save
			redirect_to lessons_path
		else
			render 'new'
		end
	end

	def edit
		@lessons = Lesson.all
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

  def next
    next_lesson = Lesson.find(params[:id]).next
    if next_lesson.present?
      redirect_to lesson_path(next_lesson)
    else
      redirect_to lessons_thats_all_path
    end
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
	def correct_user
        @user = User.find(params[:id])
        redirect_to(root_path) unless current_user?(@user)
    end

    def author_user
      redirect_to root_path unless current_user.author?
    
    end
end