class CommentsController < ApplicationController
  http_basic_authenticate_with(name: "admin", password: "secret", only: :destroy)
  def create
    # Can use a gem (slug?) to replace number id with string
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
    # Email github profile / repository to Michael to be added to Slack + Code reviews
  end

  private
  def comment_params
    params.expect(comment: [ :commenter, :body, :status ])
  end
end
