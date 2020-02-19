require 'rails_helper'
RSpec.describe 'マイドッグ新規登録テスト', type: :system do
  before do
    FactoryBot.create(:evaluate)

    visit new_session_path
    fill_in 'メールアドレス', with: 'maker1@email.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'

    context 'マイドッグ新規登録成功' do
      it '作成済みのタスクが表示されること'

      end

      it 'データが保存されること'
      end

      it 'マイドッグの内容が表示されたページに遷移すること'
      end
  end
end