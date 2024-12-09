class CommentsController < ApplicationController
  def create
    @article = Article.friendly.find(params[:article_id])
    # @comment = @article.comments.create(comment_params)
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.friendly.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
  def comment_params
    params.expect(comment: [ :body, :status ])
  end
end
