class MakeSpotsPolymorphic < ActiveRecord::Migration
  def up
  	remove_column :spots, :body
  	add_column :spots, :content_type, :string
  	add_column :spots, :content_id, :integer
  	add_index :spots, [:content_type, :content_id]
  end

  def down
  	remove_index :spots, column: [:content_type, :content_id]
  	remove_column :spots, :content_id
  	remove_column :spots, :content_type
  	add_column :spots, :body, :string
  end
end
