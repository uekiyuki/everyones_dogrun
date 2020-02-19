require 'rails_helper'

RSpec.describe 'user', type: :system do
  context 'ユーザー新規登録テスト' do
    it 'ユーザー登録成功' do
      visit new_user_path
      fill_in '名前', with: 'test_1'
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"
      click_button '登録する'
      expect(page).to have_content '新規登録しました'
        
    end

    it 'ユーザー登録失敗（氏名未入力）' do
      visit new_user_path
      fill_in '名前', with: ''
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"
      click_button '登録する'
      expect(page).to have_content '名前を入力してください'
    end

    it 'ユーザー登録失敗（パスワード未入力）' do
      visit new_user_path
      fill_in '名前', with: ''
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: ''
      fill_in '確認用パスワード', with: 'password'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"
      click_button '登録する'
      expect(page).to have_content 'パスワードを入力してください'
    end

    it 'カスタマー登録失敗（確認用パスワードが異なる）' do
      visit new_user_path
      fill_in '名前', with: ''
      fill_in 'メールアドレス', with: 'test_1@gmail.com'
      fill_in 'パスワード', with: 'password'
      fill_in '確認用パスワード', with: 'password1'
      attach_file 'Image', "#{Rails.root}/db/seed_fixtures/MG_8675-1-1024x683.jpeg"
      click_button '登録する'
      expect(page).to have_content '確認用パスワードとパスワードの入力が一致しません'
    end
  end

  context 'ログインテスト' do
    before do
      FactoryBot.create(:user)
    end
  
    it 'ログイン成功' do
      visit new_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content 'ログインしました！'
    end
  
    it 'ログイン失敗（メールアドレスが違う）' do
      visit new_session_path
      fill_in 'メールアドレス', with: 'test2@gmail.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      expect(page).to have_content 'ログイン'
    end
  
    it 'ログイン失敗（パスワードが違う）' do
      visit new_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'passwordpassword'
      click_button 'ログイン'
      expect(page).to have_content 'ログイン'
    end
  
    it 'ログアウト成功' do
      visit new_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'ログアウト'
      expect(page).to have_content 'ログアウトしました'
    end
  
    it 'メールアドレス変更' do
      visit new_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'マイページ'
      click_on 'プロフィールを編集する'
      fill_in 'メールアドレス', with: 'update_mail@gmail.com'
      click_button '登録する'
      expect(page).to have_content 'プロフィールを編集しました!'
    end
  
    it 'パスワード変更' do
      visit new_session_path
      fill_in 'メールアドレス', with: 'customer1@email.com'
      fill_in 'パスワード', with: 'password'
      click_button 'ログイン'
      click_on 'マイページ'
      click_on 'プロフィールを編集する'
      fill_in 'パスワード', with: 'passpass'
      fill_in '確認用パスワード', with: 'passpass'
      click_button '登録する'
      sleep(1)
      expect(page).to have_content 'プロフィールを編集しました!'
    end
  end
end
