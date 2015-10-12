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
lawsonb148.save


lawsonb131 = Labs.new
lawsonb131.numComputers = 25
lawsonb131.roomNumber = 'B131'
lawsonb131.isOccupied = 1
lawsonb131.building = "Lawson"
lawsonb131.save

lawsonb131 = Labs.new
lawsonb131.numComputers = 25
lawsonb131.roomNumber = 'B146'
lawsonb131.isOccupied = 1
lawsonb131.building = "Lawson"
lawsonb131.save

lawsonb158 = Labs.new
lawsonb158.numComputers = 25
lawsonb158.roomNumber = 'B158'
lawsonb158.isOccupied = 1
lawsonb158.building = "Lawson"
lawsonb158.save

lawsonb160 = Labs.new
lawsonb160.numComputers = 25
lawsonb160.roomNumber = 'B160'
lawsonb160.isOccupied = 1
lawsonb160.building = "Lawson"
lawsonb160.save

haasg40 = Labs.new
haasg40.numComputers = 25
haasg40.roomNumber = 'G40'
haasg40.isOccupied = 1
haasg40.building = "Haas"
haasg40.save

haasg40 = Labs.new
haasg40.numComputers = 25
haasg40.roomNumber = 'G56'
haasg40.isOccupied = 1
haasg40.building = "Haas"
haasg40.save

haasg40 = Labs.new
haasg40.numComputers = 25
haasg40.roomNumber = '257'
haasg40.isOccupied = 1
haasg40.building = "Haas"
haasg40.save


