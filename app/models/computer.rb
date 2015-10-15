class Computer < ActiveRecord::Base
  	validates :cpuUsage, presence: true
  	validates :labRoom, presence: true
 	 validates :name, presence: true, :uniqueness => true
 	 validates :used, presence: true
end

#TODO:
#insert computers into database

computerName = "sslab" #name of lab
labRoom = "B158"
n = 2 #number of digits
for i in 0...25
	computerName += sslab + i.to_s.rjust(n, "0")
	c = Computer.new
	c.cpuUsage = 0
	c.labRoom = labRoom
	c.name = computerName
	c.used = 0	
end

	
