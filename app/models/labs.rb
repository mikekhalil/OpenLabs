class Labs < ActiveRecord::Base

  validates :numComputers, presence: true
  validates :roomNumber, presence: true, :uniqueness => true
  validates :isOccupied, presence: true
  validates :building, presence: true

end



lawsonb148 = Labs.new
lawsonb148.numComputers = 25
lawsonb148.roomNumber = 'B148'
lawsonb148.isOccupied = 1
lawsonb148.building = "Lawson"
lawsonb148.numUsedComputers = 0
lawsonb148.save

lawsonb146 = Labs.new
lawsonb146.numComputers = 25
lawsonb146.roomNumber = 'B146'
lawsonb146.isOccupied = 1
lawsonb146.building = "Lawson"
lawsonb146.numUsedComputers = 0
lawsonb146.save



lawsonb131 = Labs.new
lawsonb131.numComputers = 25
lawsonb131.roomNumber = 'B131'
lawsonb131.isOccupied = 1
lawsonb131.building = "Lawson"
lawsonb131.numUsedComputers = 0
lawsonb131.save

lawsonb158 = Labs.new
lawsonb158.numComputers = 25
lawsonb158.roomNumber = 'B158'
lawsonb158.isOccupied = 1
lawsonb158.building = "Lawson"
lawsonb158.numUsedComputers = 0
lawsonb158.save

lawsonb160 = Labs.new
lawsonb160.numComputers = 25
lawsonb160.roomNumber = 'B160'
lawsonb160.isOccupied = 1
lawsonb160.building = "Lawson"
lawsonb160.numUsedComputers = 0
lawsonb160.save

haasg40 = Labs.new
haasg40.numComputers = 25
haasg40.roomNumber = 'G40'
haasg40.isOccupied = 1
haasg40.building = "Haas"
haasg40.numUsedComputers = 0
haasg40.save

haas257 = Labs.new
haas257.numComputers = 25
haas257.roomNumber = '257'
haas257.isOccupied = 1
haas257.building = "Haas"
haas257.numUsedComputers = 0
haas257.save

b148 = Labs.where(roomNumber: "B148").first
b131 = Labs.where(roomNumber: "B131").first
b158 = Labs.where(roomNumber: "B158").first
b160 = Labs.where(roomNumber: "B160").first
g40 = Labs.where(roomNumber: "G40").first
h257 = Labs.where(roomNumber: "257").first
b146 = Labs.where(roomNumber: "B146").first

b148.numUsedComputers = 0
b148.save
b131.numUsedComputers = 0
b131.save
b158.numUsedComputers = 0
b158.save
b160.numUsedComputers = 0
b160.save
g40.numUsedComputers = 0
g40.save
h257.numUsedComputers = 0
h257.save
b146.numUsedComputers = 0
b146.save


