class GitHubProfile
  attr_reader :name,
              :screen_name,
              :bio,
              :location,
              :url,
              :image,
              :number_repos,
              :followers,
              :following

  def initialize(raw_profile)
    @image        = raw_profile[:avatar_url]
    @name         = raw_profile[:name]
    @screen_name  = raw_profile[:login]
    @bio          = raw_profile[:bio]
    @location     = raw_profile[:location]
    @url          = raw_profile[:blog]
    @number_repos = raw_profile[:public_repos]
    @followers    = raw_profile[:followers]
    @following    = raw_profile[:following]
  end
end
