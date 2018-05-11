class GitHubGistService
  def initialize(token)
    @token = token
  end

  def gists
    GitHubGist.new(raw_gists).gists
  end

private

  def conn
    Faraday.new(url: "https://api.github.com/gists")
  end

  def response
    response ||= conn.get do |request|
      request.headers['Authorization'] = "token #{@token}"
    end
  end

  def raw_gists
    JSON.parse(response.body, symbolize_names: true)
  end
end
