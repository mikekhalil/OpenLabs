class Labs < ActiveRecord::Base

  validates :numComputers, presence: true 
  validates :roomNumber, presence: true
  validates :isOccupied, presence: true
  validates :building, presence: true

end
