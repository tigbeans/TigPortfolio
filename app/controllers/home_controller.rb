class HomeController < ApplicationController
  def index
    @projects = Project.published.most_recent
    @posts = Post.published.most_recent
  end
end
