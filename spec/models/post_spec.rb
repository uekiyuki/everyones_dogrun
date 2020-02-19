require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @dogrun = FactoryBot.create(:dogrun)
  end

  it "postを登録" do
    post = Post.new(  
    user_id: @dogrun.id, 
    dogrun_id: @dogrun.id, 
    title: "テスト",
    content: "テスト",
    image: open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg"))
    expect(post).to be_valid
  end

  it "titleが空ならバリデーションが通らない" do
    mydog = Post.new(  
    user_id: @dogrun.id, 
    dogrun_id: @dogrun.id, 
    title: "",
    content: "テスト",
    image: open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg"))
    expect(mydog).not_to be_valid
  end

  it "contentが空ならバリデーションが通らない" do
    mydog = Post.new(  
    user_id: @dogrun.id, 
    dogrun_id: @dogrun.id, 
    title: "テスト",
    content: "",
    image: open("#{Rails.root}/db/seed_fixtures/IMG_4144.jpeg"))
    expect(mydog).not_to be_valid
  end

end