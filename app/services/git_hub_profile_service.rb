class GitHubProfileService
  def initialize(token)
    @token = token
  end

  def profile
    GitHubProfile.new(raw_profile)
  end

private

  def conn
    Faraday.new(url: "https://api.github.com/user")
  end

  def response
    response ||= conn.get do |request|
      request.headers['Authorization'] = "token #{@token}"
    end
  end

  def raw_profile
    JSON.parse(response.body, symbolize_names: true)
  end
end
