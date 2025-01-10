module ArticlesHelper
  def public_and_accepted_article(article)
    article.publish_status == "public" && article.approval_status == "accepted"
  end

  def public_and_accepted_articles(articles)
    articles.where(publish_status: "public", approval_status: :accepted)
  end

  def any_public_and_accepted(articles)
    articles.any? { |article| article.publish_status == "public" && article.approval_status == "accepted" }
  end

  def public_and_accepted_count(articles)
    articles.where(publish_status: "public", approval_status: :accepted).count
  end
end
