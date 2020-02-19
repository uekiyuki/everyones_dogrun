require 'rails_helper'
RSpec.describe 'ドッグラン検索及び画面遷移テスト', type: :system do
  before do
    FactoryBot.create(:dogrun)
    visit root_path
  end

  context 'ドッグラン詳細画面' do
    it '住所から検索' do
      fill_in 'q_address_cont', with: '東京'
      expect(page).to have_content '東京'
    end

    it 'ドッグラン詳細画面からドッグラン登録者の詳細情報に遷移' do
      click_on 'テスト'
      click_on '登録者'
      expect(page).to have_content 'うえき'
    end
  end
end
