require 'rails_helper'
require './spec/support/omniauth.rb'

describe 'When I visit the root' do
  scenario 'I see the logging in status code' do
    VCR.use_cassette('user_can_login') do
      visit '/'

      expect(page.status_code).to eq(200)

      click_link "Sign in with GitHub"

      expect(current_path).to eq("/")
      expect(page).to have_content('Nikhil')
      expect(page).to have_link('Logout')
    end
  end
end
