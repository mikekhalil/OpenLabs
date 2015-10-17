class Computer < ActiveRecord::Base
 	 validates :name, presence: true, :uniqueness => true
end


#B158 Computers
labRoom = "B158"
for i in 0...25
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

#haasg40 computers
labRoom = "G40"
for i in 0...25
	computerName = "borg"
	computerName += "%02d" % i
	c = Computer.new
	c.name = computerName
	c.labRoom = labRoom
	c.used = 0
	c.cpuUsage = 0
	c.save
end

#haas257 computers
labRoom = "257"
for i in 0...25
	computerName = "xinu"
	computerName += "%02d" % i
	c = Computer.new
	c.name = computerName
	c.labRoom = labRoom
	c.used = 0
	c.cpuUsage = 0
	c.save
end

file = File.join(Rails.root, 'app',  'output.txt')
counter = 0
File.open(file).each_slice(2) do |two_lines|
		if two_lines != nil
			computerName = two_lines[0].chomp
			used = two_lines[1].chomp
		end
		c = Computer.where(name: computerName).first
		if !c.nil?
			l = Labs.where(roomNumber: c.labRoom).first
			unless l.nil?
				l.numUsedComputers += 1
			end
			c.used = used.to_i
			c.save
		end
end











