class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end
    
    def show
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to @post
    end

    def edit
    end

    def update
        @post.update(post_params)
        redirect_to @post
    end

    def destroy
        @post.destroy 
        redirect_to posts_path   
    end


    private

    def set_post
        @post = Post.find(params[:id])
    end
        
    def post_params
        params.require(:post).permit(:title, :description)
    end
end
