class BuildingsController < ApplicationController

	def show
		@b = Building.find(params[:id])
		@labs = Labs.where(building: @b.name)
	end

	def index
		@buildings = Building.all
	end

end
