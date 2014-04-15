require 'spec_helper'

describe "Pages" do
	
	subject { page }

	describe "Home page" do
		before { visit root_path }
		before { create(:lesson) }

		it { should have_title "Sublime Learning" }
		it { should have_link "Get started" }
		it { should have_link "Sublime Text" }
		it { should have_link "Github" }

		# describe 'clicking links' do
		# 	before { Lesson.create(name: 'Foo', id: 1) }
		# 	it 'should visit the correct page' do
		# 		click_link "Get started"
		# 		expect(page).to have_title "Sublime Learning | Foo"
		# 	end
		# end
	end
end