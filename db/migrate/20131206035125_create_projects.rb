class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :time_frame
      t.string :status
      t.integer :owner

      t.timestamps
    end
  end
end
