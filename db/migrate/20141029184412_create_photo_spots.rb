class CreatePhotoSpots < ActiveRecord::Migration
  def change
    create_table :photo_spots do |t|
      t.attachment :image
    end
  end
end
