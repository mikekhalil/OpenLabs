class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.integer :numComputers
      t.string :roomNumber
      t.integer :isOccupied
      t.string :building

      t.timestamps
    end
  end
end
