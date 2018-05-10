require 'rails_helper'
require './spec/support/omniauth.rb'

describe 'User can see own information' do
  scenario 'Can see account information' do
    # When I visit '/'
    visit '/'

    click_on "Sign in with GitHub"

    expect(current_path).to eq('/')

    click_on 'Profile'

    username = 'Shniks'
    expect(current_path).to eq("/#{username}")
    expect(page).to have_content('Nikhil Shahi')
    expect(page).to have_content('Shniks')
    expect(page).to have_content('Denver, Colorado')
    expect(page).to have_content('Overview')
    expect(page).to have_content('Repositories')
    expect(page).to have_content('Followers')
    expect(page).to have_content('Following')
    expect(page).to have_xpath
    # I can see my profile pic, starred repos, followers and following
  end
end
