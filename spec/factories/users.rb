FactoryBot.define do
  factory :user do
    name { "うえき" }
    email { "customer1@email.com" }
    password { "password" }
    image {open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg")}
  end
end
