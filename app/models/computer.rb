class Computer < ActiveRecord::Base
 	 validates :name, presence: true, :uniqueness => true
end

#TODO:
#insert computers into database


labRoom = "B158"
for i in 0...26
	computerName = "sslab"
	computerName += "%02d" % i
	c = Computer.new
	c.name = computerName
	c.labRoom = labRoom
	c.used = 0
	c.cpuUsage = 0
	c.save
end	
