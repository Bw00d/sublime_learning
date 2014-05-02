FactoryGirl.define do
  factory :lesson, class: Lesson do
    name "Foo"
    number 1
    chapter_id 1
    content "###Foo"
    editable_code "hello world"
    answer "hello world"
    line_number "1"
    content2 "###Foo"
    editable_code2 "hello world"
    answer2 "hello world"
    line_number2 "1"
  end
end
