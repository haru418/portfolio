require 'rails_helper'

RSpec.feature "Homes", type: :feature do
  describe 'home' do
    it 'returns http success' do
      visit '/'
      expect(page).to have_title 'ホーム | CookLook'
    end
  end
end
