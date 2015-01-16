FactoryGirl.define do

  factory :lesson, class: Lesson do
    sequence(:name) { |n| "Lesson #{n}" }
    sequence(:number) { |n| n }
    chapter_id 1
    content "###Foo"
    editable_code "hello world"
    answer "hello world"
    line_number "1"
    count 10
  end

  factory :user do
    name     "Chuck Norris"
    email    "cnorris@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
