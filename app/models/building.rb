class Building < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3 }, :uniqueness => true
end

lawson = Building.new
lawson.name = 'Lawson'
lawson.save

haas = Building.new
haas.name = 'Haas'
haas.save
