require 'rails_helper'
RSpec.describe 'マイドッグ新規登録テスト', type: :system do
  before do
    FactoryBot.create(:mydog)
    visit new_session_path
    fill_in 'メールアドレス', with: 'customer1@email.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログインする'
    click_on 'マイページ'
  end
    context 'マイドッグ新規登録成功' do
      it '作成済みのマイドッグが表示されること' do
        expect(page).to have_content 'ミルク'
      end

      it 'マイドッグ詳細画面に遷移' do
        click_on 'Show'
        expect(page).to have_content 'ラブラドール・レトリバー'
      end

      it 'マイドッグを編集' do
        click_on 'Edit'
        fill_in '年齢', with: '5'
        click_on '更新する'
        expect(page).to have_content '5'
      end
  end
end