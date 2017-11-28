class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :equipe, :prestation, :contact ]

  def home
    @article = Article.last(1).reverse
    @articles = Article.order('created_at DESC').first(3).drop(1)
  end

  def equipe
  end

  def prestation
  end

  def mentions
  end

end
