class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show, :search ]
  def index
    # if params[:search_query].present?
    #   @articles = Article.search_by_title(params[:search_query])
    # else
    #   @articles = Article.all
    # end
    @articles = Article.all
    # Article.all.each do | article |
    #   article.increment_counter(article.impression_counter, article.id)
    # end
    Article.increment_counter(:impression_count, Article.pluck(:id))
    # Article.all.each do |article|
    #   article.image.recreate_versions!
    # end
  end

  def show
    @article = Article.friendly.find(params[:id])
    Article.increment_counter(:read_count, @article.id)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.created_datetime = DateTime.current
    @article.approval_status = :pending
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

  def update_approval_status
    @article = Article.friendly.find(params[:id])
    @article.update(approval_status: params[:approval_status])

    redirect_to approve_articles_path
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  def approve
    @articles = Article.all
  end

  def search
    @results = PgSearch.multisearch(params[:search_query])
  end

  private
  def article_params
    params.expect(article: [ :title, :body, :publish_status,
    :image, :remove_image, :image_cache, :tag_list, :approval_status ])
  end
end
