class AddProfilePicUrlToHikers < ActiveRecord::Migration[6.0]
  def change
    add_column :hikers, :profile_pic_url, :string
  end
end
