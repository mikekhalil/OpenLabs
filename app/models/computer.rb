class Computer < ActiveRecord::Base
 	 validates :name, presence: true, :uniqueness => true
end

#TODO:
#insert computers into database


#B158 Computers
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

#B146 Computers
labRoom = "B146"
for i in 0...25
		computerName = "moore"
		computerName += "%02d" % i 
		c = Computer.new
		c.name = computerName
		c.labRoom = labRoom
		c.used = 0
		c.cpuUsage = 0
		c.save
end

#B148 Computers
labRoom = "B148"
for i in 1...6
	for j in 1...6
		computerName = "pod"
		computerName += i.to_s + "-" + j.to_s
		c = Computer.new
		c.name = computerName
		c.labRoom = labRoom
		c.used = 0
		c.cpuUsage = 0
		c.save
	end
end 
