class HomeController < ApplicationController
  def index
  	@buildings = Building.all
  	@machines = Machine.all
  end
end
