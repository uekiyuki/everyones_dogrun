FactoryBot.define do
  factory :user do
    name { "うえき" }
    email { "customer1@email.com" }
    password { "password" }
    image {open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg")}
  end

  factory :second_user, class: User do
    name { 'きむら' }
    email { 'test2@example.com' }
    password { 'password02' }
    image {open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg")}
  end
end
