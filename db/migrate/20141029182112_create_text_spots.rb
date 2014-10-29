class CreateTextSpots < ActiveRecord::Migration
  def change
    create_table :text_spots do |t|
      t.string :body
    end
  end
end
