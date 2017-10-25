module Admins
  class PostsController < AdminsController
    before_action :set_post, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

    def index
      @posts = Post.all
    end

    def show
    end

    def new
      @post = current_admin.posts.new
    end

    def edit
    end

    def publish
      @post.publish
      redirect_to admins_posts_url
    end

    def unpublish
      @post.unpublish
      redirect_to admins_posts_url
    end

    def create
      @post = current_admin.posts.new(post_params)

      respond_to do |format|
        if @post.save
          format.html { redirect_to admins_posts_path(@post),
            notice: 'Post was sucessfully created.' }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to admins_posts_path(@post),
            notice: 'Post was successfully updated.' }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @post.destroy
      respond_to do |format|
        format.html { redirect_to admins_posts_path,
          notice: 'Post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = current_admin.posts.friendly.find(params[:id])
    end

    # Never trust parameters from the outside world, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :description, :image_url)
    end

  end
end
