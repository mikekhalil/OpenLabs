class BuildingsController < ApplicationController
	#place public methods before private / protected methods ***
	#good practice to go in this order: index, show, new, edit, create, update and destroy
	#@xyz  means an instance variable called xyz...
	def show
		@building = Building.find(params[:id])
	end

	def index
		@buildings = Building.all
	end

end
