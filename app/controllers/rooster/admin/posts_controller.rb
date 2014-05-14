class Rooster::Admin::PostsController < Rooster::ApplicationController
  def index
    @posts = Rooster::Post.all
  end

  def new
    @post = Rooster::Post.new
    @post.blocks.build
  end

  def create
    @post = Rooster::Post.new(post_params)

    if @post.save
      redirect_to edit_admin_post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Rooster::Post.find(params[:id])
    @post.blocks.build if @post.blocks.blank?
  end

  def update
    @post = Rooster::Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to edit_admin_post_path(@post)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:published_at, :title, :slug, blocks_attributes: [:content, :id, :slug, :position])
  end
end
