class ArticlesController < ApplicationController
  before_action :find_article, only: %i[edit update destroy show]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params_filter)
    @article.save
  end

  def edit

  end

  def update

  end

  def destroy
  end

  def find_article
    @article = Article.find(params[:id])
  end

  private

  def params_filter
    params.require(:article).permit(:title, :content)
  end
end
