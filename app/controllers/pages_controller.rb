class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :equipe, :prestation, :contact ]

  def home
    @articles = Article.order('created_at DESC').first(3)
    @article = Article.last(1).reverse
  end

  def equipe
  end

  def prestation
  end

end
