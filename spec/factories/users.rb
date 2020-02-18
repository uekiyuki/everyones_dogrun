FactoryBot.define do
  factory :user do
    name { "うえき" }
    email { "a@gmail.com" }
    password { "1111" }
    confirmed_at { Time.now }
  end
end
