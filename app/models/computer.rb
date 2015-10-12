class Computer < ActiveRecord::Base
  	validates :cpuUsage, presence: true
  	validates :labRoom, presence: true
 	 validates :name, presence: true, :uniqueness => true
 	 validates :used, presence: true
end

#TODO:
#insert computers into database