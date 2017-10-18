class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @articles = Article.all.order('created_at DESC') # creates an anonymous scope
    @articles = @articles.category(params[:category]) if params[:category].present?
  end

  def show
    @article = Article.find(params[:id])
    @content = Article.find(params[:id]).content
  end

  def article_params
   params.require(:product).permit(:title, :description, :category, :content, :auteur, :photo, :photo_cache)
  end

end
