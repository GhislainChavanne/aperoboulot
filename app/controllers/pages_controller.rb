class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :equipe, :prestation, :contact ]

  def home
    @articles = Article.order('created_at DESC').first(3)
  end

  def equipe
  end

  def prestation
  end

end
