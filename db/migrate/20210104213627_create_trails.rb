class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :difficulty
      t.string :attraction

      t.timestamps
    end
  end
end
