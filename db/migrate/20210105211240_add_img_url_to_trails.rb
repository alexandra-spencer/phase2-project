class AddImgUrlToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :img_url, :string
  end
end
