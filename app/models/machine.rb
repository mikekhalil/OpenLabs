class Machine < ActiveRecord::Base
  
end

data = Machine.new
data.name = "data"
data.cpuPercent = 0
data.numUsers = 0
data.save

