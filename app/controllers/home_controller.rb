class HomeController < ApplicationController
  def index
    @papers = Paper.recent
  end
end
