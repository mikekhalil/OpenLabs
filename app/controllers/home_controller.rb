class HomeController < ApplicationController
  def index
  	@buildings = Building.all
  end
end
