FactoryBot.define do
  factory :user do
    uid '336665'
    name 'Nikhil Shahi'
    screen_name 'Shniks'
    oauth_token ENV['ACCESS_TOKEN']
  end
end
