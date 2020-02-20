require 'rails_helper'
RSpec.describe 'フォロー及びメッセージ機能テスト', type: :system do
  before do
    FactoryBot.create(:dogrun)
    FactoryBot.create(:second_user)
    visit new_session_path
    fill_in 'メールアドレス', with:'test2@example.com'
    fill_in 'パスワード', with: 'password02'
    click_on 'ログインする'
    visit root_path
    click_on '代々木公園'
    click_on 'ドッグラン登録者'
  end
    context '他ユーザー画面からフォロー・メッセージ機能が使用できる' do
      it '他ユーザー画面からメッセージを送る' do
        click_on 'メッセージを送る'
        fill_in 'message_body', with: 'こんにちは！'
        click_on 'メッセージを送る'
        sleep(2)
        expect(page).to have_content 'こんにちは！'
      end
      
      it 'ドッグラン詳細画面からドッグラン登録者をフォローする' do
        click_on 'フォローする'
        click_on 'マイページ'
        click_on 'フォロー'
        expect(page).to have_content 'うえき'
      end
  end
end