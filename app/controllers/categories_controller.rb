class CategoriesController < ApplicationController

  def index
    @category = Category.all
    render json: @categories, status: 200
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def update
    @category = category.find(params[:id])
    if @category.update(category_params)
      render json: @category, status: :ok
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @category = category.find(params[:id])
    @category.destroy
    head :no_content
  end

  private

    def category_params
      params.require(:category).permit(:id, :title, :body)
    end

end
