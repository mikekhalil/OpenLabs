class ComputersController < ApplicationController
	
	def show
		@computer = Computer.find(params[:id])
		@labRoom = Labs.where(room: @computer.labRoom)
	end

	def index
		redirect_to labs_path
	end

end

