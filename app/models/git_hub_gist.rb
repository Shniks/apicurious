class GitHubGist

  def initialize(raw_gists)
    @raw_gists = raw_gists
  end

  def gists
    @raw_gists.map do |gist|
      { url: gist[:html_url], description: gist[:description], comments: gist[:comments], created_at: gist[:created_at]}
    end[-6..-1]
  end

end
