require 'spec_helper'

feature "homepage" do

	before { @lesson = FactoryGirl.create(:lesson)}
	before { visit root_url }
	before { @lesson2 = FactoryGirl.create(:lesson) }
	subject { page }


  it { should have_title "Sublime Learning" }
	it { should have_link "Sublime Text", href: "http://www.sublimetext.com/" }
	it { should have_link "Github", href: 'https://github.com/Bw00d/sublime_learning' }

	describe 'clicking links' do
		it 'should visit the correct page' do

			click_link "Get Started"
			expect(page).to have_title "#{@lesson.name} | Sublime Learning"
			click_link "Learn Sublime"
			expect(page).to have_title "Sublime Learning"
		end
	end
end

feature "lesson pages" do
	before { @lesson = FactoryGirl.create(:lesson)}
	before { @lesson2 = FactoryGirl.create(:lesson)}
	before { visit lesson_path(@lesson) }
	subject { page }

	it { should have_title "#{@lesson.name} | Sublime Learning"}
	it { should have_link "Learn Sublime", href: root_path }
	it { should have_selector 'h2', text: @lesson.name }

  it 'should have a link to the next lesson' do
  	click_link "next lesson"
  end

  it 'should have an editor with lesson content from first lesson' do
  	expect(page).to have_content @lesson.content
  end

  it 'if edited text is equal to the answer user should get a success notice' do
  	click_button('editor-button')
  	expect(page).to have_content "Good job! Wasn't that easy?"
  end

  it 'if edited text is not equal to answer it should get a failure notice' do
  	click_button('editor-button2')
  	expect(page).to have_content "Oops, not quite."
  end

end
