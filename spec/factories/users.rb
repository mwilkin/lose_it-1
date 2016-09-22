FactoryGirl.define do
  factory :user do
    email('new@gmail.com')
    password('password')
    user_name('jimmy')
    height(7)
    dob('1990-01-10')
  end
end
