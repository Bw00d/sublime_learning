require 'spec_helper'

describe Lesson do
	context '#next' do
		it 'returns the lesson with the next-highest number than the current lesson'do
		  current_lesson = FactoryGirl.create(:lesson)
		  next_lesson = FactoryGirl.create(:lesson)
		  third_lesson = FactoryGirl.create(:lesson)
		  current_lesson.next.should eq next_lesson
		end
	end
		it { should respond_to :name }
		it { should respond_to :number }
		it { should respond_to :content }
		it { should respond_to :answer }
		it { should respond_to :editable_code }
		it { should respond_to :editable_code }
		it { should respond_to :count }

	it { should belong_to :chapter }
	it { should validate_presence_of :name }
	it { should validate_presence_of :number }
	it { should validate_uniqueness_of :number }
	it { should validate_presence_of :content }
	it { should validate_presence_of :answer }
	it { should validate_presence_of :editable_code }
	it { should validate_presence_of :count }
	
end