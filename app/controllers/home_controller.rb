class HomeController < ApplicationController
  def index
    @publications = Publication.all

    @publication = Publication.new
  end
end
