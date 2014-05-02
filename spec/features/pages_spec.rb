require 'spec_helper'

feature "homepage" do
	before { @lesson = FactoryGirl.create(:lesson)}
	before { visit root_url }
	subject { page }


  it { should have_title "Sublime Learning" }
	it { should have_link "Sublime Text", href: "http://www.sublimetext.com/" }
	it { should have_link "Github", href: 'https://github.com/Bw00d/sublime_learning' }

	describe 'clicking links' do
		it 'should visit the correct page' do
			click_link "Get Started"
			expect(page).to have_title "Sublime Learning | #{@lesson.name}"
			click_link "Learn Sublime"
			expect(page).to have_title "Sublime Learning"
		end
	end
end

feature "lesson pages" do
	before { @lesson = FactoryGirl.create(:lesson)}
	before { visit lesson_path(@lesson) }
	subject { page }

	it { should have_title "Sublime Learning | #{@lesson.name}"}
end
