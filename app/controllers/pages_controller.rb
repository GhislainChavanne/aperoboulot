class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :equipe, :prestation, :contact, :mentions, :offredumois ]

  def home
  end

  def equipe
  end

  def prestation
  end

  def mentions
  end

  def offredumois
  end

end
