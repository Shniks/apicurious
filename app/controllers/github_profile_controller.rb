class GithubProfileController < ApplicationController
  def show
    @github_profile ||= GitHubProfileService.new(current_user.oauth_token).profile
  end
end
