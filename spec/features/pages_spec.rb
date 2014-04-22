require 'spec_helper'
	
feature "Homepage" do

	before { visit root_url }
	subject { page }


  it { should have_title "Sublime Learning" }
  it { should have_link "Get Started" }
	it { should have_link "Sublime Text" }
	it { should have_link "Github" }

	describe 'clicking links' do
		it 'should visit the correct page' do
		  lesson = Lesson.new(name: "Foo")
		  lesson.save 
		  p lesson
			click_link "Get Started"
			expect(page).to have_title "Sublime Learning | #{lesson.name}"
		end
	end
end
