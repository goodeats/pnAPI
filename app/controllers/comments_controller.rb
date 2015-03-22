class CommentsController < ApplicationController

  def index
    if params[:article_id]
      @article = Article.find(params[:article_id])
      @comments = @article.comments
      render json: @comments, status: 200
    else
      @comments = Comment.all
      render json: @comments, status: :ok
    end
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @article.comments << @comment
    if @comment.save
      render json: @comment, status: :created
    else
      render json: comment.errors,
      status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    head :no_content
  end

  private

    def comment_params
      params.require(:comment).permit(:author, :body, :article_id)
    end

end
