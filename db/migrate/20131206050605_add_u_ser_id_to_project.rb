class AddUSerIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :user_id, :integer
    remove_column :projects, :owner
  end
end
