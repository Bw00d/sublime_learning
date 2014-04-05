require 'spec_helper'

describe Lesson do
	context '#next' do
		it 'returns the lesson with the next-highest number than the current lesson'do
		  current_lesson = Lesson.create({ name: 'lesson1', number: 1 })
		  next_lesson = Lesson.create({ name: 'lesson2', number: 2 })
		  current_lesson.next.should eq next_lesson
		end
	end

	context '#previous' do
		it 'returns the lesson with the next-lowest number than the current lesson'do
		  current_lesson = Lesson.create({ name: 'lesson1', number: 1 })
		  next_lesson = Lesson.create({ name: 'lesson2', number: 2 })
		  third_lesson = Lesson.create({ name: 'lesson3', number: 3 })
		  third_lesson.previous.should eq next_lesson
		end
	end

	it { should belong_to :chapter }
	
end