require 'rails_helper'

RSpec.describe Mydog, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it "mydogを登録" do
    mydog = Mydog.new(  
    user_id: @user.id,    
    name: "テスト",
    breed: "テスト",
    age: "1",
    gender: "male",
    image: open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg"))
    expect(mydog).to be_valid
  end

  it "nameが空ならバリデーションが通らない" do
    mydog = Mydog.new(  
    user_id: @user.id,    
    name: "",
    breed: "テスト",
    age: "1",
    gender: "male",
    image: open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg"))
    expect(mydog).not_to be_valid
  end

end
