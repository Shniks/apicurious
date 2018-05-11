require 'spec_helper'
require './app/models/git_hub_profile'
describe GitHubProfile do
  let (:attributes) {
    {
      image: 'http://www.someimage.com/image.png',
      name: 'Nikhil',
      screen_name: 'Shniks',
      bio: 'Chills out all day',
      location: 'Whole Foods',
      url: 'http://www.someblogpost.com'
    }
  }

  subject { GitHubProfile.new(attributes)}

  context 'Initialize' do
    it 'Exists with valid attributes' do
      expect(subject.image).to eq('http://www.someimage.com/image.png')
      expect(subject.name).to eq('Nikhil')
      expect(subject.screen_name).to eq('Shniks')
      expect(subject.bio).to eq('Chills out all day')
      expect(subject.location).to eq('Whole Foods')
      expect(subject.url).to eq('http://www.someblogpost.com')
    end
  end
end
