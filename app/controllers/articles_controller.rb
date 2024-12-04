class ArticlesController < ApplicationController
  http_basic_authenticate_with(name: "admin", password: "secret", except: [ :index, :show ])
  def index
    if params[:search_query].present?
      @articles = Article.search_by_title(params[:search_query])
    else
      @articles = Article.all
    end
  end

  def show
    @article = Article.friendly.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def article_params
    params.expect(article: [ :title, :body, :status, :image, :remove_image, :image_cache, :tag_list ])
  end
end
