class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :project, index: true
      t.references :user, index: true
      t.integer :rating_score

      t.timestamps
    end
  end
end
