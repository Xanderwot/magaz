class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
    	t.string :name
    	t.text :description
    	t.has_attached_file :logo
    	t.integer :subcategory_id

      t.timestamps
    end
  end
end
