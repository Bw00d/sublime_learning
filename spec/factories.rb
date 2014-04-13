include ActionDispatch::TestProcess

FactoryGirl.define do
	factory :lesson, class: Lesson do
		name "Foo"
		number 1
		chapter_id 1
		content "###Foo"
	end
end