require 'rails_helper'

RSpec.describe Dogrun, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it "dogrunを登録" do
    dogrun = Dogrun.new(  
    user_id: @user.id,    
    name: "テスト",
    address: "テスト",
    opening_at: "2020-02-17 09:00:00",
    closing_at: "2020-02-17 16:00:00",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"))
    expect(dogrun).to be_valid
  end

  it "nameが空ならバリデーションが通らない" do
    dogrun = Dogrun.new(  
    user_id: @user.id,    
    name: "",
    address: "テスト",
    opening_at: "2020-02-17 09:00:00",
    closing_at: "2020-02-17 16:00:00",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"))
    expect(dogrun).not_to be_valid
  end

  it "addressが空ならバリデーションが通らない" do
    dogrun = Dogrun.new(  
    user_id: @user.id,    
    name: "テスト",
    address: "テスト",
    opening_at: "2020-02-17 09:00:00",
    closing_at: "2020-02-17 16:00:00",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"))
    expect(dogrun).to be_valid
  end

  it "opening_at,closing_at,がDatetimeでなければバリデーションが通らない" do
    dogrun = Dogrun.new(
    user_id: @user.id,
    name: "テスト",
    address: "テスト",
    opening_at: "",
    closing_at: "",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"))
    expect(dogrun).not_to be_valid
  end

end