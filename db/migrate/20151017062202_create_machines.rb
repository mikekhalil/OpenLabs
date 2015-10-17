class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.integer :cpuPercent
      t.integer :numUsers
      t.float :latencies

      t.timestamps
    end
  end
end
