# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :challenge do
    name "MyString"
    status 1
    start_date "2013-11-04 22:02:49"
    end_date "2013-11-04 22:02:49"
    quota 1
    reward "MyString"
  end
end
