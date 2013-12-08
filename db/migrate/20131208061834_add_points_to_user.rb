class AddPointsToUser < ActiveRecord::Migration
  def change
    add_column :users, :rewardPoints, :integer, :default => 0, :null => false
  end
end
