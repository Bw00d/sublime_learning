class Lesson < ActiveRecord::Base
	belongs_to :chapter

	def next
		@lesson = Lesson.where(number: self.number + 1)
		@lesson.first
	end	

	def previous
		@lesson = Lesson.where(number: self.number - 1)	
		@lesson.first
	end

end
