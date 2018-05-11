require 'rails_helper'
require './spec/support/omniauth.rb'

describe 'User logins in to the app' do
  scenario 'Can see a list of repos' do
    VCR.use_cassette('user_can_see_repos') do

      visit '/'

      click_on "Sign in with GitHub"

      expect(current_path).to eq('/')

      click_on 'Profile'

      username = 'Shniks'
      expect(current_path).to eq("/#{username}")
    end
  end
end
