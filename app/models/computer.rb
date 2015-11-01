class Computer < ActiveRecord::Base
 	 validates :name, presence: true, :uniqueness => true

		 	def self.updateComputers
			labs = Labs.all

			labs.each do |lab|
				lab.numUsedComputers = 0
				lab.save
			end

			file = File.join(Rails.root, 'app',  'output.txt')
			#set up computer name and used variables outside of loop to have the correct scope
			computerName = "" 
			used = "0"
			File.open(file).each_slice(1) do |line|
			if !(line[0].blank?)
				if line[0].length > 2
					computerName = line[0].chomp
				else
					used = line[0].chomp
					c = Computer.where(name: computerName).first
					if !c.nil?
						usedInt = used.to_i
						if usedInt != c.used	
							c.used = usedInt
							c.save
						end
						l = Labs.where(roomNumber: c.labRoom).first
						if !l.nil?
							if c.used
								l.numUsedComputers += 1
								l.save
							end
						end
					end
				end
			end
		end
	end
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


















