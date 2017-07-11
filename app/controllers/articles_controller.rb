class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC') # creates an anonymous scope
    @articles = @articles.category(params[:category]) if params[:category].present?
  end

  def show
    @article = Article.find(params[:id])
    @content = Article.find(params[:id]).content
  end

end
