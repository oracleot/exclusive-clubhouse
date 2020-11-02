class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def new
    @post = Post.new
  end

  def create
    new_post = Post.new(title: params[:post][:title], body: params[:post][:body], author: current_user.name, user_id: current_user.id)
    raise
    redirect_to root_path if new_post.save
  end

  def index; end
end
