class Lesson < ActiveRecord::Base
	belongs_to :chapter
	validates :name, presence: true
	validates :number, presence: true
	validates :content, presence: true									 
	validates :answer, presence: true
	validates :line_number, presence: true
	validates :editable_code, presence: true

	def next
		@lesson = Lesson.where(number: self.number + 1)
		@lesson.first
	end	

	def previous
		@lesson = Lesson.where(number: self.number - 1)	
		@lesson.first
	end

end
