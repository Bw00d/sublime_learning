FactoryGirl.define do
  factory :lesson, :class => Lesson do
		name "Foo"
		number 1
		chapter_id 1
		content "###Foo"
		editable_code "Bar"
		answer "Bar"
		content2 "###Foo"
		editable_code2 "Bar"
		answer2 "Bar"
  end
end
