class Admin::ArticlesController < Admin::BaseController
  def index
    @articles = Article.all
  end

  def update_approval_status
    @article = Article.friendly.find(params[:id])
    @article.update(approval_status: params[:approval_status])

    redirect_to admin_articles_path
  end

  private
  def article_params
    params.expect(article: [ :publish_status, :approval_status ])
  end
end
