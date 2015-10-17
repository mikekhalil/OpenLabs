class AddNumUsedComputersToLabs < ActiveRecord::Migration
  def change
    add_column :labs, :numUsedComputers, :integer
  end
end
