FactoryGirl.define do
  factory :lesson, class: Lesson do
    sequence(:name) { |n| "Lesson #{n}" }
    sequence(:number) { |n| n }
    chapter_id 1
    content "###Foo"
    editable_code "hello world"
    answer "hello world"
    line_number "1"
    content2 "###Foo"
    editable_code2 "hi world"
    answer2 "hi"
    line_number2 "1"
  end
end
