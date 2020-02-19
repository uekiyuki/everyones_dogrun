FactoryBot.define do
  factory :mydog do 
    user #FactoryBot/usersでuserを作成
    name {"ミルク"}
    breed {"ラブラドール・レトリバー"}
    age {"13"}
    gender {"male"}    
    image {open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg")}
  end
end


