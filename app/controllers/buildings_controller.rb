class BuildingsController < ApplicationController

	def show
		@b = Building.find(params[:id])
		@labs = Labs.where(building: @b.name)
	end

	def index
		@buildings = Building.all 
		@machines = Machine.all
		@lawsonComputers = Labs.where(building: "Lawson")
		@haasComputers = Labs.where(building: "Haas")
		@computers = Computer.all
	end

end
