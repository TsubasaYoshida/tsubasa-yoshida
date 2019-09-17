class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category]
      @category = Category.find_by(id: params[:category])
      @blogs = @category.blogs.order(created_at: :desc)
    else
      @blogs = Blog.all.order(created_at: :desc)
    end
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog, notice: 'ブログ記事の作成に成功しました。'
    else
      render :new
    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to @blog, notice: 'ブログ記事の更新に成功しました。'
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_url, notice: 'ブログ記事の削除に成功しました。'
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :body, :created_at, category_ids: [])
  end

end
