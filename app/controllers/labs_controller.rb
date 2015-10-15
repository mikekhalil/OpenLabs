class LabsController < ApplicationController
	def show
		@lab = Labs.find(params[:id])
		@computers = Computer.where(labRoom: @lab.roomNumber)
	end

	def index
		redirect_to buildings_path
	end

end
