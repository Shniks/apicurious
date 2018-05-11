class GitHubRepo

  def initialize(raw_repos)
    @raw_repos = raw_repos
  end

  def repos
    @raw_repos.map do |repo|
      { name: repo[:name], url: repo[:html_url], language: repo[:language]}
    end[0..5]
  end

end
