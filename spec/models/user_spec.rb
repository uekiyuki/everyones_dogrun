require 'rails_helper'

RSpec.describe User, type: :model do
  it "nameが空ならバリデーションが通らない" do
    user = User.new(name: '', email: 'test0@gmail.com', password: 'password')
    expect(user).not_to be_valid
  end

  it "emailのlengthが51以上だとバリデーションが通らない" do
    user = User.new(name: 'ccc',  email: '12345678901234567890123456789012345678901234567890@gmail.com', password: 'password')
    expect(user).not_to be_valid
  end

  it "emailが重複しているとバリデーションが通らない" do
    user = User.create(name: 'aaa', email: 'test1@gmail.com', password: 'password')
    @user = User.new(name: 'bbb', email: 'test1@gmail.com', password: 'password')
    @user.valid?
    expect(@user.valid?).to eq(false)
  end
end
