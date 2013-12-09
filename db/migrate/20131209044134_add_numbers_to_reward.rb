class AddNumbersToReward < ActiveRecord::Migration
  def change
    add_column :rewards, :numbers, :integer
  end
end
