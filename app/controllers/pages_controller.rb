class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :equipe, :prestation, :contact ]

  def home
  end

  def equipe
  end

  def prestation
  end

end
