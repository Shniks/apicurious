class GitHubRepoService
  def initialize(token)
    @token = token
  end

  def repos
    GitHubRepo.new(raw_repos).repos
  end

private

  def conn
    Faraday.new(url: "https://api.github.com/user/repos?affiliation=owner&sort=created")
  end

  def response
    response ||= conn.get do |request|
      request.headers['Authorization'] = "token #{@token}"
    end
  end

  def raw_repos
    JSON.parse(response.body, symbolize_names: true)
  end
end
