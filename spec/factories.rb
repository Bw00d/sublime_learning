include ActionDispatch::TestProcess

FactoryGirl.define do
	factory :lesson do
		name "Foo"
		number 1
		chapter_id 1
		content "###Foo"
	end
end