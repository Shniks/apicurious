require 'rails_helper'
require './spec/support/omniauth.rb'

describe 'User can see own information' do
  scenario 'Can see account information' do
    VCR.use_cassette('user_can_see_account_information') do
      
      visit '/'

      click_on "Sign in with GitHub"

      expect(current_path).to eq('/')

      click_on 'Profile'

      username = 'Shniks'
      expect(current_path).to eq("/#{username}")
      expect(page).to have_content('Nikhil Shahi')
      expect(page).to have_content('Shniks')
      expect(page).to have_content('Denver, Colorado')
      expect(page).to have_content('Repositories 41')
      expect(page).to have_content('Followers 7')
      expect(page).to have_content('Following 1')
    end
  end
end
