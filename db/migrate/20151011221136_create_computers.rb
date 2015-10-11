class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :name
      t.string :labRoom
      t.boolean :used
      t.integer :cpuUsage

      t.timestamps
    end
  end
end
