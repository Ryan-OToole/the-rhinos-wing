class PostsController < ApplicationController
    before_action :set_post, only: [:show,:update,:destroy]

  def index
    posts = Post.all
    render json: posts, status: 200
  end

  def show
    @post = Post.find_by(id: params[:id])
    render json: @post
  end

  def create
    post = Post.create(post_params)
    render json: post, status: 201
  end

  def update
    @post.update(post_params)
    render json: @post, status: 200
  end

  def destroy
    postId = @post.id
    @post.destroy
    render json: {message:"Zap! Post be gone", postId:postId}
  end

  private
    def post_params
      params.permit(:user_id, :title, :body)
    end

    def set_post
      @post = Post.find(params[:id])
    end

end
