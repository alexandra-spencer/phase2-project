class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :rating
      t.integer :hiker_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
