class LabsController < ApplicationController
	def show
		@lab = Labs.find(params[:id])
		@building = Building.where(building: @lab.building)
		#@computers = Computer.where(labRoom: @lab.roomNumber)
	end

	def index
		redirect_to buildings_path
	end

end
