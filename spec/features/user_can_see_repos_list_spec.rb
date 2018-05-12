require 'rails_helper'

describe 'User logins in to the app' do
  scenario 'Can see a list of repos' do
    VCR.use_cassette('user_can_see_repos') do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/'

      expect(current_path).to eq('/')

      page.first(".welcome_profile").click
      username = 'Shniks'

      expect(current_path).to eq("/#{username}")
      expect(page).to have_content('Repositories: 41')
      # links
      #count of repos
    end
  end
end
