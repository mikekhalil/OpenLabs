class Machine < ActiveRecord::Base
  validates :name, presence: true, :uniqueness => true

  def self.updateMachines
	  	file = File.join(Rails.root, 'app',  'bigcomputeroutput.txt')
		File.open(file).each_slice(4) do |four_lines|
		if four_lines != nil
			if !four_lines[0].blank?
				name = four_lines[0].chomp
			end
			if four_lines[1].length > 4
				cpu = four_lines[1].chomp.chomp.chomp.chomp
			end
			if !four_lines[2].blank?
				numUsers = four_lines[2].chomp
			end
			if !four_lines[3].blank?
				latencies = four_lines[3].chomp
			end
			m = Machine.where(name: name).first
			if !m.nil?
				m.cpuPercent = cpu.to_i
				m.numUsers = numUsers.to_i
				m.latencies = latencies.to_f
				m.save
			end
		end

  end
end

#initialize database to incorporate Data
data = Machine.new
data.name = "data"
data.cpuPercent = 0
data.numUsers = 0
data.latencies = 0
data.save

end