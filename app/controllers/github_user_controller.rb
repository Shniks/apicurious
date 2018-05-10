class GithubUserController < ApplicationController
  def show
    @github_user ||= GitHubUserService.new(current_user.oauth_token).profile
  end
end
