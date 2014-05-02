require 'spec_helper'

feature "homepage" do
	before { @lesson = FactoryGirl.create(:lesson)}
	before { visit root_url }
	subject { page }


  it { should have_title "Sublime Learning" }
  it { should have_link "Get Started" }
	it { should have_link "Sublime Text" }
	it { should have_link "Github" }

	describe 'clicking links' do
		it 'should visit the correct page' do
			click_link "Get Started"
			expect(page).to have_title "Sublime Learning | #{@lesson.name}"
			click_link "Learn Sublime"
			expect(page).to have_title "Sublime Learning"
			# test for GitHub link
			# page.should have_selector "a[href='https://github.com/Bw00d/sublime_learning']", text: "GitHub"
		end
	end
end
