FactoryBot.define do
  factory :dogrun do 
    user #FactoryBot/usersでuserを作成
    name {"テスト"}
    address {"テスト"}
    opening_at {"2020-02-17 07:00:00"}
    closing_at {"2020-02-17 16:00:00"}
    price {"テスト"}
    breadth {"テスト"}
    other {"テスト"}
    image {open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg")}
  end
end
