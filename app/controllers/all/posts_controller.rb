  module All
    class PostsController < ApplicationController

      def index
        @posts = published_post
      end

      def show
        @post = published_post.friendly.find(params[:id])
      end

      private

      def published_post
        Post.published
      end

    end
  end
