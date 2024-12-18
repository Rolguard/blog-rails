module ArticlesHelper
  def public_and_accepted(articles)
    articles.any? { |article| article.status == "public" && article.approval_status == "accepted" }
  end
end
