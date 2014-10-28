class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :body
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
