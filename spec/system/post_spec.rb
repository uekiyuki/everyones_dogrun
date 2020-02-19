require 'rails_helper'
RSpec.describe 'ドッグラン画面遷移テスト', type: :system do
  before do
    FactoryBot.create(:dogrun)

    context 'ドッグラン詳細画面' do
      it 'ドッグラン詳細画面からドッグラン登録者の詳細情報に飛べる'
      click_on 'Show'
      click_on '登録者'
      expect(page).to have_content 'うえき'
      end

      it 'データが保存されること'
      end

      it '該当タスクの内容が表示されたページに遷移すること'
      end
  end
end