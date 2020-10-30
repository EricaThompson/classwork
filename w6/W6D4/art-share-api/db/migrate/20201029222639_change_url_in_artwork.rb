class ChangeUrlInArtwork < ActiveRecord::Migration[5.2]
  def change
    change_column :artworks, :image_url, :string

  end
end
