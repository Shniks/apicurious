class GithubProfileController < ApplicationController
  def show
    @github_profile ||= GitHubProfileService.new(current_user.oauth_token).profile
    @github_repos ||= GitHubRepoService.new(current_user.oauth_token).repos
    @github_gists ||= GitHubGistService.new(current_user.oauth_token).gists
  end
end
