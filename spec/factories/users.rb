FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { 'sample@gmail.com' }
    password              { '111aaa' }
    password_confirmation {password}
  end
end