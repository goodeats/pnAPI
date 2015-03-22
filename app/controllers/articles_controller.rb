class ArticlesController < ApplicationController

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @articles = @category.articles
      render json: @articles, status: 200
    else
      @articles = Article.all
      render json: @articles, status: :ok
    end
  end


  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def create
    @category = Category.find(params[:category_id])
    @article = Article.new(article_params)
    @category.articles << @article
    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      render json: @article, status: :ok
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    head :no_content
  end

private

  def article_params
    params.require(:article).permit(:id, :title, :body)
  end

end
