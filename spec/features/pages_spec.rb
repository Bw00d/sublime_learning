require 'spec_helper'
	
feature "Homepage" do

	before { visit root_url }
	before { @lesson = FactoryGirl.create(:lesson) }
	subject { page }


  it { should have_title "Sublime Learning" }
  it { should have_link "Get Started" }
	it { should have_link "Sublime Text" }
	it { should have_link "Github" }

	describe 'clicking links' do
		it 'should visit the correct page' do
	    p @lesson
			click_link "Get Started"
			expect(page).to have_title "#{@lesson.name} | Sublime Learning"
		end
	end
end
