class CreateHikers < ActiveRecord::Migration[6.0]
  def change
    create_table :hikers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :experience

      t.timestamps
    end
  end
end
