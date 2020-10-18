FactoryBot.define do
  factory :user do
    nickname              { 'abe'}
    email                 {'kkk@gmail.com'}
    password              {'toy1007'}
    password_confirmation {password}
  end
end
