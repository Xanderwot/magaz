class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
    	t.text :name
    	t.integer :category_id

      t.timestamps
    end
  end
end
