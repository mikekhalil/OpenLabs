class LabsController < ApplicationController
	def show
		@lab = Labs.find(params[:id])
		@computers = Computer.where(labRoom: @lab.roomNumber)
		@machines = Machine.all
	end

	def index
		@lawsonComputers = Labs.where(building: "Lawson")
		@haasComputers = Labs.where(building: "Haas")
	end

end
