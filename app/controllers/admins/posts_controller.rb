module Admins
  class PostsController < AdminsController

    def index
      @posts = Post.all
    end

    def show
    end

  end
end
